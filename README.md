# Time Series Analysis Assignments

A collection of assignments covering fundamental and advanced time series analysis techniques, including state-space models, Kalman filtering, and parameter estimation.

## Structure

### Assignment 1
Introduction to time series fundamentals.
- **File**: `Assignment1_Code.ipynb`
- **Data**: `DST_BIL54.csv` (Danish traffic data)

### Assignment 2
Time series preprocessing and visualization techniques.
- **Main Task**: `Task2.ipynb`
- **Output**: Results stored in `task2_outputs/`
- **Prerequisites**: See `prerequisites.md`

### Assignment 3
Advanced time series modeling with multiple tasks.
- **Tasks**: `Task1.ipynb`, `Task2.ipynb`, `Task3.ipynb`
- **Data**: `box_data_60min.csv`, `datasolar.csv`
- **Output**: Plots in `Plots/` folder
- **Prerequisites**: See `prerequisites.md`

### Assignment 4
State-space models and Kalman filtering with robustness analysis.
- **Tasks**: `Task1.ipynb`, `Task2.ipynb`
- **Data**: `transformer_data.csv`
- **Utilities**: R helper functions in `functions_chant/`
  - `kalmanfilter.R`
  - `myLogLikFun.R`
  - `functions_exercise2.R`

## Key Topics

- State-space modeling
- Kalman filtering
- Maximum likelihood estimation
- Parameter identifiability
- Robustness to model misspecification (heavy-tailed noise)

## Dependencies

See individual assignment `prerequisites.md` files for specific requirements.