export type ReservationStatusTransition = Readonly<{
  from?: ReservationStatusEnum;
  to: ReservationStatusEnum;
}>;

public static readonly ReservationStatusTransitions: Readonly<ReservationStatusTransition[]> =
    Object.freeze([
      { to: ReservationStatus.IN_PROGRESS },
      { from: ReservationStatus.SCHEDULED, to: ReservationStatus.IN_PROGRESS },
      { from: ReservationStatus.IN_PROGRESS, to: ReservationStatus.CANCELLED },
    ]);