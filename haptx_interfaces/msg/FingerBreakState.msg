# This is a message that holds data to describe the state of the finger breaks 
#
# The state of each finger break is defined by:
#  * a boolean indicating whether the break is activated (True or False)
#
# Each finger break is uniquely identified by its name
#
# All arrays in this message should have the same size.
# This is the only way to uniquely associate the finger break name with the
# correct activation states.

string[] name
bool[] activated