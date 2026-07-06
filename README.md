# Steinmetz Neuroscience Experiment Dataset

Used in the Matlab and Python Neural Data Analysis Courses

Data from Publication:  Steinmetz, N.A., Zatka-Haas, P., Carandini, M. et al. Distributed coding of choice, action and engagement across the mouse brain. Nature 576, 266–273 (2019). https://doi.org/10.1038/s41586-019-1787-x

## Run the pipeline

```
pixi run pipeline
```

> **Running the pipeline takes around 10 minutes**: While the data is being downloaded feel free to watch [this video](https://youtu.be/WXn4-FpVaOo?si=JtCNyh6Xf102zOHg) from the Neuromatch academy in which Nicholas Steinmetz breifly explains the dataset. If you have doubts feel free to discuss them in your group!

    

## Variable Explanation

* `'mouse'`: mouse name.
* `'session_date'`: when a session was performed.
* `'session_id'`: unique id for a session.
* `'stim_onset'`: when the stimulus appeared on the screen.
* `'contrast_right'`: contrast level for the right stimulus, which is always contralateral to the recorded brain areas.
* `'contrast_left'`: contrast level for left stimulus.
* `'gocue_time'`: when the go cue sound was played.
* `'response_time'`: when the response was registered, which has to be after the go cue.
* `'response_type'`: which side the response was (`-1`, `0`, `1`). When the right-side stimulus had higher contrast, the correct choice was `-1`. `0` is a no go response.
* `'reaction_type'`: direction of the wheel movement.
* `'reaction_time'`: reaction time computed from the wheel movement.
* `'feedback_type'`: if the feedback was positive (`+1`, reward) or negative (`-1`, white noise burst).
* `'feedback_time'`: when feedback was provided.
* `'active_trials'`: `True` for active trials and `False` for passive trials (i.e. when the mouse was no longer engaged and stopped making responses).


## Backups

> In case the official raw data is deleted, we have a backup on Sciebo: https://uni-bonn.sciebo.de/apps/files/?dir=/steinmetz_neuromatch_dataset&fileid=2493828995
