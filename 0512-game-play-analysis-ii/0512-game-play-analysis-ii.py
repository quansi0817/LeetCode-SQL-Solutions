import pandas as pd

def game_analysis(activity: pd.DataFrame) -> pd.DataFrame:
    
  result = (
    activity.sort_values(by=['player_id', 'event_date'])
    .drop_duplicates(subset=['player_id'],keep='first')
    [['player_id', 'device_id']]
  )
  return result