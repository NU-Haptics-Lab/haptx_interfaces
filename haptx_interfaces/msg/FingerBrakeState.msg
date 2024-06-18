# This is a message that holds data to describe the state of the finger brakes 
#
# The state of each finger brake is defined by:
#  * a boolean indicating whether the brake is activated (True or False)
#
# Each finger brake is uniquely identified by its name
#
# All arrays in this message should have the same size.
# This is the only way to uniquely associate the finger brake name with the
# correct activation states.

string[] name
bool[] activated
std_msgs/Header header