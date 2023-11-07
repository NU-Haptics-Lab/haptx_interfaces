# This is a message that holds data to describe the state of the
# HaptX Gloves.
#
# The state of the HaptX Gloves is defined by:
#  * a FingerBrakeState message
#  * a TactorState message
#  * a TactorGroup message
#
# Each finger brake is uniquely identified by its name
#
# This message consists of a multiple message types, each for a different
# aspect of the HaptX Gloves. The goal is to make each of the fields optional.
# When e.g. you don't want to activate the finger brakes, you can leave the
# brakes message empty.

FingerBrakeState brakes
TactorState tactors
TactorGroupState tactor_groups