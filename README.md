This project applies predictive and prescriptive analytics to hotel customer data to identify key drivers of guest satisfaction and translate insights into actionable business decisions.

The analysis combines regression modelling, model comparison, and a prescriptive optimisation framework to support improvements in customer experience and revenue outcomes.

## Business Problem
Hospitality businesses collect large volumes of customer feedback and behavioural data, but struggle to translate this into clear, actionable decisions.
The objective of this project was to identify key drivers of overall guest satisfaction, quantify their relative impact, and design data-driven recommendations that support operational prioritisation, customer experience improvement, and revenue optimisation.
## Data & Features
The analysis uses a structured hotel customer dataset containing satisfaction ratings, behavioural metrics, and customer attributes.

Key feature groups included:

- Satisfaction metrics (front desk service, room cleanliness, dining experience, pricing, perks)

- Behavioural variables (spend on rooms, food, WiFi; nights stayed; distance travelled)

- Customer attributes (visit purpose, loyalty/elite status)

Data preparation involved type conversions, scaling, log transformations, and feature selection to ensure suitability for regression modelling.
## Analytical Approach
Analytical Approach

A structured, end-to-end analytics workflow was applied:

1. Data Preparation

Data cleaning and preprocessing

Distribution analysis and log transformation for skewed variables

Standardisation of mixed-scale variables

Factor encoding for categorical features

2. Exploratory Data Analysis

Correlation analysis to identify potential satisfaction drivers

Visual diagnostics to assess relationships and data quality

3. Predictive Modelling

Incremental linear regression models (M1 → M5) increased adjusted R² from ~0.26 to ~0.32

Model comparison using R², adjusted R², and ANOVA

ANOVA confirmed statistically significant improvement between models

Residual diagnostics to validate modelling assumptions

4. Prescriptive Modelling

Translation of predictive insights into an optimisation framework

Definition of decision variables, constraints, and objective function
## Key Insights
- Front desk service was the strongest predictor, with a coefficient of ~0.51 in the baseline model.

- Adding perks and loyalty benefits increased explained variance by ~5 percentage points

- Cleanliness, pricing perceptions, and recognition further increased predictive accuracy.

- Expanded models explained ~32% of satisfaction, which shows clear levers but also limits of perception-based data

- Customer type and visit purpose improved fit with diminishing returns, highlighting prioritisation trade-offs

- Predictive models explained a meaningful portion of satisfaction variation while highlighting where managerial intervention has the highest leverage.

- Supporting visuals include regression diagnostics, coefficient plots, and model comparison tables (see /visuals)
## Prescriptive Decision Framework
Predictive insights were translated into a decision-support framework to guide managerial action.

Prescriptive framework uses hypothetical improvement coefficients to demonstrate optimisation logic, and the framework illustrates trade-offs under budget constraints rather than exact financial forecasts.


**Objective**

- Maximise overall guest satisfaction under budget constraints.

**Decision levers**

- Investment in staff training

- Facility and cleanliness improvements

- Targeted pricing and promotional adjustments

**Constraints**

- Limited improvement budget

- Operational feasibility

- Resource allocation trade-offs

**Outcome**

The following table shows how the analysis moved beyond insight generation into prioritised, optimised business decisions.
<img width="694" height="386" alt="image" src="https://github.com/user-attachments/assets/e09e61d5-b413-4987-973a-b0acc8c4782b" />

_Improvement coefficients are hypothetical and used to demonstrate optimisation logic rather than precise financial forecasts_

## Business Implications
- Customer experience improvements should prioritise front-line staff and core service quality before secondary features.

- Loyalty programmes and perks can be strategically enhanced to improve satisfaction and retention.

- Predictive satisfaction scores enable proactive service interventions for at-risk customer segments.

- Prescriptive modelling supports evidence-based investment decisions, aligning customer experience improvements with financial constraints.

- The approach is directly applicable to customer experience strategy, revenue management, and operational planning.
## Tools & Techniques
**R:** data manipulation, regression modelling, diagnostics

**Statistical methods:** correlation analysis, linear regression, ANOVA

**Data preprocessing:** scaling, log transformation, feature engineering

**Visual analytics:** correlation plots, regression diagnostics

**Decision analytics:** prescriptive optimisation framework
