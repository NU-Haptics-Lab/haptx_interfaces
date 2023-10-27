# This is a message that holds data to describe the state of the
# HaptX Gloves.
#
# The state of the HaptX Gloves is defined by:
#  * a FingerBreakState message
#  * a TactorState message
#  * a TactorGroup message
#
# Each finger break is uniquely identified by its name
#
# This message consists of a multiple message types, each for a different
# aspect of the HaptX Gloves. The goal is to make each of the fields optional.
# When e.g. you don't want to activate the finger breaks, you can leave the
# breaks message empty.

FingerBreakState breaks
TactorState tactors
TactorGroupState tactor_groups