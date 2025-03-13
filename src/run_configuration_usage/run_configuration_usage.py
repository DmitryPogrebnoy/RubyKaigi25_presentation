import matplotlib.pyplot as plt
from matplotlib import font_manager

jb_mono_font_path = './../../fonts/JetBrainsMono/ttf/JetBrainsMonoNL-SemiBold.ttf'
inter_font_path = './../../fonts/Inter/Inter_18pt-SemiBold.ttf'

font_prop_bar_labels = font_manager.FontProperties(fname=jb_mono_font_path, size=16, weight='semibold')
font_prop_x = font_manager.FontProperties(fname=inter_font_path, size=16, weight='semibold')
font_prop_y_numbers = font_manager.FontProperties(fname=jb_mono_font_path, size=16, weight='semibold')
font_prop_y_title = font_manager.FontProperties(fname=inter_font_path, size=16, weight='semibold')

event_data = {"Run": 462_945, "Debug": 146_063, "Coverage": 1225, "Profiler": 133}

# Data
categories = event_data.keys()
values = [ round(event_number/sum(event_data.values()) * 100, 1) for event_number in event_data.values()]

# Define specific RGB colors (converted from 255-based to 0-1 range)
colors = [
    (87/255, 55/255, 255/255),  # Purple
    (248/255, 107/ 255, 24 / 255),  # Orange
    (38/255, 172/255, 143/255),  # Teal
    (252/255, 11/255, 121/255),  # Pinkish
]

# Create figure
plt.figure(figsize=(10, 6))

# Create bar chart with specific RGB colors
plt.bar(categories, values, width=0.6, color=colors, zorder=3)

# Remove external borders
ax = plt.gca()
ax.spines['top'].set_visible(False)
ax.spines['right'].set_visible(False)
ax.spines['left'].set_visible(False)

# Set y-axis limits
plt.ylim(0, 100)

# Add horizontal grid lines (black and behind bars)
plt.grid(axis='y', linestyle='-', color='black', alpha=1, zorder=0)

# Show value on top of each bar
for i, v in enumerate(values):
    plt.text(i, v + 2, f"{v}%", ha='center', fontproperties=font_prop_bar_labels)

# Labels
plt.ylabel('Percentage per users', fontproperties=font_prop_y_title)

# Adjust tick sizes (Increase the X-axis font size here)
plt.xticks(fontproperties=font_prop_x)  # Increase fontsize for X-axis ticks
plt.yticks(fontproperties=font_prop_y_numbers)

# Show plot
plt.show()
