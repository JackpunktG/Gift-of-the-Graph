import matplotlib.pyplot as plt
import plotly.express as px
import pandas as pd



fileName = input("Enter the CSV filename: ")
df = pd.read_csv(fileName)  
x_col = df.columns[0]
y_col = df.columns[1]

#Matplotlib
plt.bar(df[x_col], df[y_col], label=f"{y_col} for {x_col}", color = 'green')
plt.title(f"{y_col} for {x_col}")
plt.legend()
plt.show()

# Plotly plot
fig = px.line(df, x=x_col, y=y_col, title=f"{y_col} for {x_col}")
fig.show()