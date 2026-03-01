import pandas as pd


def gameplay_analysis(activity:pd.DataFrame) -> pd.DataFrame:

    first_login = activity.groupby('player_id')['event_date'].min().reset_index()

    first_login['second_date'] = first_login['event_date'] + pd.to_timedelta(1, unit = 'D')

    second_day_logins = pd.merge(
        activity,
        first_login,
        left_on=['player_id', 'event_date'],
        right_on =['player_id', 'second_date'] 

    )

    numberator = second_day_logins['player_id'].nunique()
    demominator = activity['player_id'].nunique()

    fraction = round(numberator / demominator, 2)

    return pd.DataFrame({'fraction':[fraction] })