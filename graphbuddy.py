import matplotlib.pyplot as plt
import plotly.express as px
import pandas as pd



fileName = input("Enter the CSV filename: ")
df = pd.read_csv(fileName, sep = ';')  
x_col = df.columns[0]
y_col = df.columns[1]


#for filtering
#df_filtered = df[df[y_col] > 20]

#Matplotlib
plt.scatter(df[x_col], df[y_col], label=f"{y_col} for {x_col}", color = 'orange')
plt.title(f"{y_col} for {x_col}")
plt.legend()
plt.show()



#with labels
#fig, ax = plt.subplots()

#bars = ax.bar(df[x_col], df[y_col], label=f"{y_col} for {x_col}", color='green')
#labels = [str(v) if i % 2 != 0 else '' for i, v in enumerate(df[y_col])]

#ax.bar_label(bars, labels=labels)
#ax.set_xlabel("Away from last time")
#ax.set_ylabel("Frequency") 
#ax.set_title("Count of n, where n is the distance to last prime")
#ax.legend()
#plt.show()


# Plotly plot
#fig = px.line(df, x=x_col, y=y_col, title=f"{y_col} for {x_col}")
#fig.show()