<div align="center">

# 🛒 E-Commerce Order Management System

### SAP RAP | ABAP Cloud | SAP Fiori Elements | OData V4

<p>
  <img src="https://img.shields.io/badge/SAP-ABAP%20Cloud-0FAAFF?style=for-the-badge&logo=sap&logoColor=white"/>
  <img src="https://img.shields.io/badge/SAP-RAP-0FAAFF?style=for-the-badge"/>
  <img src="https://img.shields.io/badge/Fiori-Elements-blue?style=for-the-badge"/>
</p>

<p>
A complete SAP RAP application for managing customers, products, sales orders, payments, and shipping with an intuitive SAP Fiori Elements interface.
</p>

</div>

---

# 📖 Overview

The **E-Commerce Order Management System** is developed using the **SAP RESTful ABAP Programming Model (RAP)** on **SAP ABAP Cloud**.

The application streamlines the complete order lifecycle, allowing users to manage:

- 👤 Customers
- 📦 Products
- 🛍️ Sales Orders
- 💳 Payments
- 🚚 Shipping
- 📊 Order Status Tracking

It follows SAP RAP best practices with CDS Views, Behavior Definitions, Service Bindings, and SAP Fiori Elements.

---

# ✨ Features

✅ Customer Management

✅ Product Management

✅ Sales Order Processing

✅ Payment Management

✅ Shipping Management

✅ Order Status Tracking

✅ Draft Enabled Business Objects

✅ Fiori Elements UI

✅ Value Help (F4 Search)

✅ RAP Actions

---

# 🛠️ Technologies Used
# 🛠️ Technologies Used

<p>

<img src="https://img.shields.io/badge/SAP-RAP-0FAAFF?style=for-the-badge&logo=sap&logoColor=white"/>

<img src="https://img.shields.io/badge/ABAP-Cloud-blue?style=for-the-badge"/>

<img src="https://img.shields.io/badge/CDS-Views-green?style=for-the-badge"/>

<img src="https://img.shields.io/badge/SAP-HANA-red?style=for-the-badge"/>

<img src="https://img.shields.io/badge/OData-V4-success?style=for-the-badge"/>

<img src="https://img.shields.io/badge/Fiori-Elements-orange?style=for-the-badge"/>

<img src="https://img.shields.io/badge/ADT-Eclipse-purple?style=for-the-badge"/>

</p>

---
| Technology | Description |
|------------|-------------|
| SAP ABAP Cloud | Backend Development |
| SAP RAP | RESTful Application Programming Model |
| CDS Views | Data Modeling |
| Behavior Definitions | Business Logic |
| Behavior Implementation | RAP Actions |
| Metadata Extensions | UI Annotations |
| Service Definition | OData Exposure |
| Service Binding | OData V4 |
| SAP Fiori Elements | Frontend |

---

# 🗂️ Project Structure

```
E-Commerce-Order-Management-System
│
├── Database Tables
├── CDS Interface Views
├── CDS Projection Views
├── Metadata Extensions
├── Behavior Definitions
├── Behavior Implementations
├── Service Definition
├── Service Binding
├── Data Generation Class
└── README.md
```

---

# 🏗️ Database Objects

- Customer Master
- Product Master
- Order Header
- Order Items
- Payment
- Shipping

---

# 📊 RAP Architecture

```
Database Tables
       │
       ▼
 CDS Interface Views
       │
       ▼
 CDS Projection Views
       │
       ▼
Behavior Definition
       │
       ▼
Behavior Implementation
       │
       ▼
Service Definition
       │
       ▼
Service Binding (OData V4)
       │
       ▼
SAP Fiori Elements
```

---

# 🚀 Functional Modules

### 👤 Customer Module

- Create Customer
- Update Customer
- Search Customers

---

### 📦 Product Module

- Product Catalog
- Inventory Management
- Price Management

---

### 🛒 Order Module

- Create Order
- Update Order
- Accept Order
- Cancel Order
- Track Orders

---

### 💳 Payment Module

- Payment Processing
- Payment Confirmation
- Payment Status

---

### 🚚 Shipping Module

- Shipment Creation
- Shipment Tracking
- Delivery Confirmation

---
---

# 📷 Application Screenshots

The following screenshots demonstrate the key functionalities of the **E-Commerce Order Management System**.

### 📝 Message Class

Business validation and success/error messages used across RAP actions.

<p align="center">
<img width="940" height="587" alt="image" src="https://github.com/user-attachments/assets/7fe27005-dfef-4c1a-bbac-4758e5965bdd" />

</p>

---

### 📋 Initial Fiori Launch Screen

Landing page of the application with filters and toolbar.

<p align="center">
<img width="940" height="556" alt="image" src="https://github.com/user-attachments/assets/fdc62667-e77c-44b5-8e49-e1db9e6c4546" />

</p>

---

### 🛒 Sales Order List Report

Displays all sales orders with customer, payment, shipping, and order status.

<p align="center">
<img width="940" height="554" alt="image" src="https://github.com/user-attachments/assets/5c99ce29-39aa-4699-a534-0777ef8c38bb" />

</p>

---

### 🔍 Order ID Value Help

Search Help (F4) for selecting an Order ID.

<p align="center">
<img width="940" height="559" alt="image" src="https://github.com/user-attachments/assets/b422abfe-6cae-4dcb-9911-34a1646c5d8b" />

</p>

---

### 👤 Customer Value Help

Search Help (F4) for selecting a customer.

<p align="center">
<img width="940" height="553" alt="image" src="https://github.com/user-attachments/assets/b4af21f7-78d0-4dc9-b699-d1a761befdad" />

</p>

---

### 📌 Order Status Value Help

Search Help for filtering orders by status.

<p align="center">
<img width="940" height="553" alt="image" src="https://github.com/user-attachments/assets/002fb22e-be22-42ed-bb31-d57b9dc81be5" />

</p>

---

### 📄 Sales Order Object Page

Detailed view of the selected order with associated order items.

<p align="center">
<img width="940" height="554" alt="image" src="https://github.com/user-attachments/assets/b44471f0-1366-4736-8137-b9c29e2ff479" />

</p>

---

### 📦 Order Item Details

Displays complete information for an individual order item.

<p align="center">
<img width="940" height="548" alt="image" src="https://github.com/user-attachments/assets/90077ea7-14a7-45eb-8f4f-6f1bbe1700ce" />

</p>

---

### ➕ Create Sales Order

Create a new sales order using SAP Fiori draft capabilities.

<p align="center">
<img width="940" height="548" alt="image" src="https://github.com/user-attachments/assets/41362b07-d7af-46b3-bb74-b543901922db" />

</p>

---

### ⚡ RAP Business Actions

Execute custom RAP actions such as Accept Order, Confirm Payment, Pack Order, Ship Order, Deliver Order, and Cancel Order.

<p align="center">
<img width="940" height="529" alt="image" src="https://github.com/user-attachments/assets/203fae22-dece-4579-abcf-7ba23500a048" />

</p>

---
# 🎯 Future Enhancements

- 📧 Email Notifications
- 📊 SAP Analytics
- 📈 Dashboard Analytics
- 📄 PDF Invoice Generation
- 👤 Customer Portal
- 🔐 Role-Based Authorization
- 📉 Smart Charts

---

# 📈 Project Highlights

- SAP RAP Application Development
- ABAP Cloud Development
- SAP Fiori Elements UI
- OData V4 Services
- CDS View Modeling
- Behaviour Definitions & Implementations
- Metadata Extensions
- Value Help (F4 Search)
- CRUD Operations
- Business Validations & Actions
---

# 📚 Learning Outcomes

This project demonstrates practical implementation of:

- SAP RESTful ABAP Programming Model (RAP)
- SAP ABAP Cloud Development
- CDS Interface & Projection Views
- Behaviour Definitions & Implementations
- Metadata Extensions
- OData V4 Service Development
- SAP Fiori Elements
- Business Object Modeling
- CRUD Operations
- Enterprise Application Development
---

# 👩‍💻 Author

### **Akshata Kumbhar**

SAP RAP | SAP ABAP | SAP Fiori | ABAP Cloud Developer


