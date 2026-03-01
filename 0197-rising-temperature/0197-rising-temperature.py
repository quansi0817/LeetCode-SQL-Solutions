import pandas as pd

def rising_temperature(weather: pd.DataFrame) -> pd.DataFrame:
    
    weather['previous_day'] = weather['recordDate'] - pd.to_timedelta(1, unit='D')

    total_temp = pd.merge(
        weather,
        weather,
       left_on='previous_day',
        right_on='recordDate'
    )

    higher_temp = total_temp[total_temp['temperature_x']> total_temp['temperature_y']]

# 第 4 步：按题目要求，只交上今天对应的 id 列
    return higher_temp[['id_x']].rename(columns={'id_x': 'id'})