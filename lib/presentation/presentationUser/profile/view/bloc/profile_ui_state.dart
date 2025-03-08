import 'dart:io';

class ProfileUiState{}
class UpdateProfilePictureState extends ProfileUiState{
  final File file;

  UpdateProfilePictureState(this.file);
}
class LogoutState extends ProfileUiState{}
class DeleteAccountState extends ProfileUiState{}
