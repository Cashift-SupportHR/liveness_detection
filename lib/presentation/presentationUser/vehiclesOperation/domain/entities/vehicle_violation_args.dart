class AddVehicleViolationArgs{
  // for edit
  int? violationId;
  // for add a new violation but linked to a round trip
  int? roundTripId;

  AddVehicleViolationArgs({
    this.violationId,
    this.roundTripId,
  });
}