part of 'resume_bloc.dart';

@immutable
abstract class ResumeEvent {
  Stream<CommonState> applyAsync(
      {required CommonState currentState, required ResumeBloc bloc});
}

class FetchComponentDataEvent extends ResumeEvent {
  @override
  Stream<CommonState> applyAsync(
      {required CommonState currentState, required ResumeBloc bloc}) async* {
    try {
      yield LoadingState();
      final responseLevels = await bloc._resumeRepository.fetchAllLevels();
      final responseCities = await bloc._resumeRepository.fetchAllCities();
      final responseResume = await bloc._resumeRepository.fetchResume();
      final responseQualifications =
          await bloc._resumeRepository.getAllEducationalQualification();
      final responseSituations =
          await bloc._resumeRepository.getAllCurrentSituation();
      final qualificationNames =
          await bloc._resumeRepository.getAllQualificationName();
      final favoriteTimes =
          await bloc._resumeRepository.fetchFavouriteTimeWork();

      print('UpdateEducation ${responseResume.computerLevel}');
      bloc.add(UpdateEducation(EducationInfo(
          qualificationDegreeId: responseResume.qualificationId,
          qualificationName: responseResume.qualificationName,
          currentSituation: responseResume.currentSituation,
          computerLevel: responseResume.computerLevel,
          englishLevel: responseResume.englishLevel)));

      bloc.add(UpdatePersonalInfo(PersonalInfo(
        cityId: responseResume.cityId,
        isMale: responseResume.gender ?? true,
        email: responseResume.email,
        name: responseResume.name,
        isHijri: responseResume.isHijri,
        birthdate: responseResume.isHijri == true
            ? responseResume.birthDateHijri
            : responseResume.birthDateString,
        hBirthdate: responseResume.birthDateHijri,
        idNumber: responseResume.idNumber,
        length: responseResume.length,
        weight: responseResume.wieght,
        districtId: responseResume.districtId,
      )));

      bloc.add(UpdateSkills(SkillsInfo(
          computerLevel: responseResume.computerLevel,
          englishLevel: responseResume.englishLevel)));
      if (responseResume.cityId != null) {
        await bloc.fetchDistricts(responseResume.cityId ?? 0);
      }
      bloc.add(UpdateFavoriteTimes(FavoriteTimeInfo(
        timeWorkId: responseResume.timeWorkId,
        favourateHours: responseResume.favourateHours,
      )));

      bloc.resumeComponentData = ResumeComponentData(
        levels: responseLevels,
        cities: responseCities,
        resume: responseResume,
        qualifications: responseQualifications,
        situations: responseSituations,
        qualificationNames: qualificationNames,
        districts: bloc.districtsStream,
        favoriteTimes: favoriteTimes,
      );
      yield Initialized(data: bloc.resumeComponentData!);
    } catch (e, s) {
      print(s);
      yield ErrorState(e);
    }
  }
}

class UpdateResumeEvent extends ResumeEvent {
  final UpdateResumeParams updateResumeParams;

  UpdateResumeEvent(this.updateResumeParams);
  @override
  Stream<CommonState> applyAsync(
      {required CommonState currentState, required ResumeBloc bloc}) async* {
    try {
      yield LoadingStateListener();
      final response =
          await bloc._resumeRepository.updateResume(updateResumeParams);
      final user = bloc._userRepository.getUser()!;
      bloc._resumeRepository.fetchResume();
      user.isCompeleteProfile = true;
      // print('updateResume ${user}');
      bloc._userRepository.saveUser(user);
      yield Initialized(data: response);
    } catch (e, s) {
      print(s);
      yield FailureStateListener(e);
    }
  }
}

class UpdatePersonalInfo extends ResumeEvent {
  final PersonalInfo personalInfo;

  UpdatePersonalInfo(this.personalInfo);

  @override
  Stream<CommonState> applyAsync(
      {required CommonState currentState, required ResumeBloc bloc}) async* {
    bloc.personalInfoStream.setData(personalInfo);
  }
}

class UpdateSkills extends ResumeEvent {
  final SkillsInfo skillsInfo;

  UpdateSkills(this.skillsInfo);

  @override
  Stream<CommonState> applyAsync(
      {required CommonState currentState, required ResumeBloc bloc}) async* {
    bloc.skillsStream.setData(skillsInfo);
  }
}

class UpdateEducation extends ResumeEvent {
  final EducationInfo educationInfo;

  UpdateEducation(this.educationInfo);

  @override
  Stream<CommonState> applyAsync(
      {required CommonState currentState, required ResumeBloc bloc}) async* {
    print('UpdateEducation ${educationInfo.qualificationDegreeId}');
    bloc.educationInfoStream.setData(educationInfo);
  }
}

class UpdateFavoriteTimes extends ResumeEvent {
  final FavoriteTimeInfo favoriteTimeInfo;

  UpdateFavoriteTimes(this.favoriteTimeInfo);

  @override
  Stream<CommonState> applyAsync(
      {required CommonState currentState, required ResumeBloc bloc}) async* {
    print('UpdateFavorite ${favoriteTimeInfo.timeWorkId}');
    bloc.favoriteTimesStream.setData(favoriteTimeInfo);
  }
}

class FetchJobs extends ResumeEvent {
  final bool isMale;

  FetchJobs({required this.isMale});

  @override
  Stream<CommonState> applyAsync(
      {required CommonState currentState, required ResumeBloc bloc}) async* {
    try {
      bloc.experiencesInfoStream.setData(dataState.DataLoading());
      final jobs = await bloc._resumeRepository
          .fetchJobs(bloc.personalInfoStream.data!.isMale);
      final state = dataState.DataSuccess(
          data: FavoriteJobsInfo(
              jobs: jobs, favoriteJobs: bloc.resumeComponentData!.favJobs()));
      bloc.experiencesInfoStream.setData(state);
    } catch (e) {
      bloc.experiencesInfoStream.setError(e);
    }
  }
}

class FetchDistricts extends ResumeEvent {
  final int cityId;

  FetchDistricts({required this.cityId});

  @override
  Stream<CommonState> applyAsync(
      {required CommonState currentState, required ResumeBloc bloc}) async* {
    bloc.fetchDistricts(cityId);
  }
}
