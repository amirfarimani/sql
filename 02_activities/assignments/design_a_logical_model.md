# Assignment 1: Design a Logical Model

## Question 1
Create a logical model for a small bookstore. 📚

At the minimum it should have employee, order, sales, customer, and book entities (tables). Determine sensible column and table design based on what you know about these concepts. Keep it simple, but work out sensible relationships to keep tables reasonably sized. Include a date table. There are several tools online you can use, I'd recommend [_Draw.io_](https://www.drawio.com/) or [_LucidChart_](https://www.lucidchart.com/pages/).


![image](https://github.com/user-attachments/assets/7fa1800f-3e53-45e6-a4a2-f070a89fd08c)


## Question 2
We want to create employee shifts, splitting up the day into morning and evening. Add this to the ERD.

![image](https://github.com/user-attachments/assets/45bc02b9-64ae-40c4-a552-a9ff54851b25)


## Question 3
The store wants to keep customer addresses. Propose two architectures for the CUSTOMER_ADDRESS table, one that will retain changes, and another that will overwrite. Which is type 1, which is type 2?

_Hint, search type 1 vs type 2 slowly changing dimensions._

Bonus: Are there privacy implications to this, why or why not?
```
Your answer...
```


Type 1: Overwriting the Previous Address
In this approach, the existing address information is overwritten with the new data whenever a customer's address changes.

Structure: The table's structure remains unchanged. There is only one row per customer, and it always holds the most recent address.
Example use case: If you're only interested in knowing the current address and have no need to retain previous addresses, this is the simplest and most efficient solution.

Type 2: Retaining Address History
In this approach, the old address is preserved. Each time a customer's address changes, a new row is added to the table with a new customer_address_id, and the old record remains intact.

Structure: The table now includes a customer_address_id (or other identifiers like start_date and end_date) to track each change. The current address is indicated by having an end_date of NULL or a specific is_current flag.

## Question 4
Review the AdventureWorks Schema [here](https://i.stack.imgur.com/LMu4W.gif)

Highlight at least two differences between it and your ERD. Would you change anything in yours?
```
Your answer...
```
1. Normalization and Simplicity:
Imgur Diagram: It is likely more normalized and simplified, with fewer complex relationships. This ensures that redundant data is minimized, and each entity has a clear, defined purpose. For example, the imgur diagram may handle product details, customers, and orders in a more streamlined way, reducing complexity by avoiding extra tables for processes that can be combined or managed with fewer tables.

My Diagram: While functional, it could potentially benefit from further normalization to simplify some of the relationships. For example, reconsidering whether separating the Sales Table from the Order Table is necessary or if they could be merged for simplicity, especially if sales are always tied directly to an order.

2. Modularity and Flexibility:
Imgur Diagram: Likely focuses on a modular structure where different entities (like customers, products, and orders) are independently managed, making the system adaptable. This allows future changes (like adding new product types or customer details) without needing to overhaul the entire system.

My Diagram: It could be made more modular and flexible by separating out responsibilities between entities more clearly. For example, handling of employee shifts is very specific, but I might think about making it more flexible by creating a more generalized system for tracking employee roles, schedules, or involvement in various tasks.

# Criteria

[Assignment Rubric](./assignment_rubric.md)

# Submission Information

🚨 **Please review our [Assignment Submission Guide](https://github.com/UofT-DSI/onboarding/blob/main/onboarding_documents/submissions.md)** 🚨 for detailed instructions on how to format, branch, and submit your work. Following these guidelines is crucial for your submissions to be evaluated correctly.

### Submission Parameters:
* Submission Due Date: `September 28, 2024`
* The branch name for your repo should be: `model-design`
* What to submit for this assignment:
    * This markdown (design_a_logical_model.md) should be populated.
    * Two Entity-Relationship Diagrams (preferably in a pdf, jpeg, png format).
* What the pull request link should look like for this assignment: `https://github.com/<your_github_username>/sql/pull/<pr_id>`
    * Open a private window in your browser. Copy and paste the link to your pull request into the address bar. Make sure you can see your pull request properly. This helps the technical facilitator and learning support staff review your submission easily.

Checklist:
- [ ] Create a branch called `model-design`.
- [ ] Ensure that the repository is public.
- [ ] Review [the PR description guidelines](https://github.com/UofT-DSI/onboarding/blob/main/onboarding_documents/submissions.md#guidelines-for-pull-request-descriptions) and adhere to them.
- [ ] Verify that the link is accessible in a private browser window.

If you encounter any difficulties or have questions, please don't hesitate to reach out to our team via our Slack at `#cohort-4-help`. Our Technical Facilitators and Learning Support staff are here to help you navigate any challenges.
