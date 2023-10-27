# HaptX Glove Messages

These messages can be used to actuate the HaptX Gloves.

There are 4 types of messages:
- `FingerBreakState`: This message can be used to activate/deactivate the finger breaks of the HaptX Glove
- `TactorState`: This message can be used to inflate/deflate individual tactors
- `TactorGroupState`: This message can be used to inflate/deflate predefined groups of tactors
- `FullHandState`: This message can be used to activate the figner breaks and inflate/deflate individual tactors or tactor groups

<br>

## haptx_interfaces/FingerBreakState
```
string[] name
bool[] activated
```


The FingerBreakState message contains of:
- A list of strings called `name` which specifies the names of the finger breaks you want to activate/deactivate
    - Options:
        - Right Hand:
            - Thumb: `'rh_th'`
            - First Finger: `'rh_ff'`
            - Middle Finger: `'rh_mf'`
            - Ring Finger: `'rh_rf'`
            - Little Finger: `'rh_lf'`
        - Left Hand:
            - Thumb: `'lh_th'`
            - First Finger: `'lh_ff'`
            - Middle Finger: `'lh_mf'`
            - Ring Finger: `'lh_rf'`
            - Little Finger: `'lh_lf'`

- A list of booleans called `activated` which specifies the state of each finger break specified in the `name` list
    - Options:
        - `True`
        - `False`


__Example Usage:__

This message will activate the finger breaks on the Right Hand First Finger and Right Hand Middle Finger, and deactivate the finger break on the Left Hand Thumb
```
msg = FingerBreakState()
msg.name = ['rh_ff', 'rh_mf', 'lh_th']
msg.activated = [True, True, False]
```

<br>

## haptx_interfaces/TactorState
```
int32[] tactor_id
float64[] inflation
```


The TactorState message contains of:
- A list of tactor IDs called `tactor_id` which specifies the IDs of the tactors you want to inflate/deflate
    - Options:
        - [Insert Image Here]

- A list of floats called `inlfation` which specifies how much to inflate each tactor specified in the `tactor_id` list
    - The inflation value should be a float in the range of [0,1]
    - The inflation value specifies the proportion of the max inflation
    - Values below 0.0 will lead to zero inflation, and values above 1.0 will lead to max inflation


__Example Usage:__

This message will inflate tactor 1011 to 0.7\*MAX_INFLATION, tactor 1023 to 1.0\*MAX_INFLATION, etc.
```
msg = TactorState()
msg.tactor_id = [1011, 1023, 1038, 1237]
msg.inflation = [0.7, 1.0, 0.0, 0.2]
```

<br>

## haptx_interfaces/TactorGroupState
```
string[] tactor_group
float64[] inflation
```


The TactorGroupState message contains of:
- A list of strings called `tactor_group` which specifies the names of the tactor groups you want to inflate/deflate
    - Options:
        - Right Hand:
            - Thumb: `'rh_th'`
            - First Finger: `'rh_ff'`
            - Middle Finger: `'rh_mf'`
            - Ring Finger: `'rh_rf'`
            - Little Finger: `'rh_lf'`
        - Left Hand:
            - Thumb: `'lh_th'`
            - First Finger: `'lh_ff'`
            - Middle Finger: `'lh_mf'`
            - Ring Finger: `'lh_rf'`
            - Little Finger: `'lh_lf'`

- A list of floats called `inflation` which specifies how much to inflate each tactor group specified in the `tactor_group` list
    - The inflation value should be a float in the range of [0,1]
    - The inflation value specifies the proportion of the max inflation
    - Values below 0.0 will lead to zero inflation, and values above 1.0 will lead to max inflation


__Example Usage:__

This message will inflate the tactors on the Right Hand First Finger to 0.4\*MAX_INFLATION, the tactors on the Right Hand Middle Finger to 0.67\*MAX_INFLATION, etc.
```
msg = TactorGroupState()
msg.tactor_group = ['rh_ff', 'rh_mf', 'lh_th']
msg.inflation = [0.4, 0.67, 0.0]
```

<br>

## haptx_interfaces/FullHandState
```
FingerBreakState breaks
TactorState tactors
TactorGroupState tactor_groups
```


The TactorGroupState message contains of:
- A FingerBreakState message called `breaks` which can be used to activate/deactivate the finger breaks
- A TactorState message called `tactors` which can be used to inflate/deflate individual tactors
- A TactorGroupState message called `tactor_groups` which can be used to inflate/deflate tactor groups


Any of these fields are optional. For example, if you only specify `tactor_groups`, no finger breaks will be activated/deactivated.

If the `tactors` field specifies values that are contradicted by values in the `tactor_groups` field, the values in the `tactor_groups` field will take precedence.


__Example Usage:__

This message will inflate the tactors on the Right Hand First Finger to 0.4\*MAX_INFLATION, the tactors on the Right Hand Middle Finger to 0.67\*MAX_INFLATION, etc.
```
msg = TactorGroupState()
msg.tactor_group = ['rh_ff', 'rh_mf', 'lh_th']
msg.inflation = [0.4, 0.67, 0.0]
```