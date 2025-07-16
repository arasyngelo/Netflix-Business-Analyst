# 📊 Netflix Content Analysis with Oracle SQL
---

## 📌 Project Goals

- Analyze content growth and format trends (TV Show vs Movie)
- Identify top contributing countries and genres
- Investigate content duration and rating categories
- Detect quality issues like missing data
- Translate SQL analysis into actionable business insights

---

## 🧰 Tools Used

- Oracle SQL 11g (with SQL Developer)
- Netflix Dataset from [Kaggle](https://www.kaggle.com/datasets/shivamb/netflix-shows)

---

## 🗂️ Folder Structure

| Folder     | Description                                 |
|------------|---------------------------------------------|
| `/sql`     | Contains all SQL queries used in analysis   |
| `/data`    | Raw CSV dataset                             |

---

## 🔍 Key Insights (from SQL)

### 🌍 Top Contributing Countries
- USA leads, followed by India, UK, Canada.
- High dependency on North American content.

### 🎬 Most Common Genres
- Drama and International content dominate.

### ⏱️ Popular Movie Durations
- Most common: 90–100 minutes.
- Very few movies exceed 2 hours.

### 🧑‍🎓 Age Rating Breakdown
- Mostly adult content (`TV-MA`, `R`)
- Limited kids & family-friendly titles

### ⚠️ Data Quality Gaps
- 30%+ entries missing director or country fields.
- Suggests need for metadata improvement.

---

## 💡 Recommendations

- Diversify content origins (outside USA)
- Invest more in family and teen-rated content
- Improve data collection system for metadata (director, country)
- Promote popular genres with shorter durations to boost engagement
