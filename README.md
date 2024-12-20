# Amazon Customer Segmentation

## **Project Overview:**

The primary goal of this project is to segment Amazon customers into distinct groups based on user demographics and purchasing behavior, enabling targeted marketing, personalized recommendations, and improved customer retention.

## **Objectives:**

* Identify how many unique customer segments exist and the characteristics of each segment. 
* Determine which segment generates the most revenue.
* Find which category of products are most commonly purchased by customers.

## **Tools & Skills:**

* Python, MySQL, Tableau
* Data cleaning, Pandas, Matplotlib, Exploratory Data Analysis,  Data Manipulation, K-Means Clustering, Data Visualization, Dashboard building
* Acknowledgment: Thank you to Harvard Dataverse for providing this public Amazon dataset.

## **Data Summary:**

* Source: [Harvard Dataverse](https://dataverse.harvard.edu/dataset.xhtml?persistentId=doi:10.7910/DVN/YGLYDY)
* Data cleaning performed in Python (removing unnecessary data & imputing missing values)
* Size: 1.7M+ rows of customer demographics and purchasing data & 31 columns

## **Key Findings:**

* Segment 1: Middle-aged (35-44), high-income females with frequent purchases (5-10/month), and primarily buying from the "Abis Book" category.
* Segment 2: Young (25-34), low-income females with infrequent purchases (<5/month), and focused on the "Abis Book" category.
* Segment 3: Young (25-34), moderate-income females with frequent purchases (5-10/month), and primarily purchasing from "Abis Book."

## **EDA & Visualizations**

<p align="center">
  <img src="https://github.com/user-attachments/assets/a83ba587-5d1f-41ce-b147-9223afabb0ba" alt="Elbow" width="45%">
  <img src="https://github.com/user-attachments/assets/6f412c6b-6664-4d81-a068-54af107709a6" alt="KMeans" width="45%">
</p>
<p align="center">
  <img src="https://github.com/user-attachments/assets/453a1e6c-32f6-44a2-82db-aa9f2df69fd0" alt="Dash1" width="45%">
  <img src="https://github.com/user-attachments/assets/151c2dd1-629a-4075-81e2-6c7c1c51a556" alt="Dash2" width="45%">
</p>

[Interactive Tableau Dashboard](https://public.tableau.com/app/profile/iqra.naz/viz/AmazonTableauDashboard_17345658902420/Dashboard1?publish=yes)

## ** Business Recommendations:**

* Segment 1: Target middle-aged females with high income and purchase frequency by promoting bestsellers, audiobooks, and e-readers, and incentivize loyalty with free shipping or early sale access.
* Segment 2: Appeal to young females with low income through budget-friendly campaigns, book bundles, and “deals under $20,” leveraging Instagram and TikTok for promotion.
* Segment 3: Offer medium-priced book bundles and exclusive editions, while cross-selling adjacent products like stationery and reading accessories, with incentives like free shipping for frequent buyers.
