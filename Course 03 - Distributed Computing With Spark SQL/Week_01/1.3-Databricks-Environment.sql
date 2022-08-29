-- Databricks notebook source
-- MAGIC 
-- MAGIC %md-sandbox
-- MAGIC 
-- MAGIC <div style="text-align: center; line-height: 0; padding-top: 9px;">
-- MAGIC   <img src="https://databricks.com/wp-content/uploads/2018/03/db-academy-rgb-1200px.png" alt="Databricks Learning" style="width: 600px">
-- MAGIC </div>

-- COMMAND ----------

-- MAGIC %md
-- MAGIC # 1.3 The Databricks Environment
-- MAGIC 
-- MAGIC ## ![Spark Logo Tiny](https://files.training.databricks.com/images/105/logo_spark_tiny.png) In this lesson you:
-- MAGIC * Log into Databricks
-- MAGIC * Create a notebook inside your home folder in Databricks
-- MAGIC * Create, or attach to, a Spark cluster
-- MAGIC * Import the course files into your home folder
-- MAGIC 
-- MAGIC ## ![Spark Logo Tiny](https://files.training.databricks.com/images/105/logo_spark_tiny.png) Audience
-- MAGIC * Primary Audience: Data Analysts with a working knowledge of SQL
-- MAGIC 
-- MAGIC ## ![Spark Logo Tiny](https://files.training.databricks.com/images/105/logo_spark_tiny.png) Prerequisites
-- MAGIC * Web browser: current versions of Google Chrome, Firefox, Safari, or Microsoft Edge (see <a href="https://docs.databricks.com/user-guide/supported-browsers.html#supported-browsers#" target="_blank">Supported Web Browsers</a>)

-- COMMAND ----------

-- MAGIC %md-sandbox
-- MAGIC ### Step 1
-- MAGIC Databricks notebooks are backed by clusters, or networked computers, that process data. Create a Spark cluster (*if you already have a running cluster, skip to **Step 3** *):
-- MAGIC 1. Select the **Compute** icon in the sidebar.
-- MAGIC <div><img src="https://s3-us-west-2.amazonaws.com/files.training.databricks.com/images/eLearning/ucdavis/images/1-3-step-1-1.png" style="height: 200px; margin: 20px"/></div>
-- MAGIC 2. Click the **Create Cluster** button.
-- MAGIC <div><img src="https://s3-us-west-2.amazonaws.com/files.training.databricks.com/images/eLearning/ucdavis/images/1-3-step-1-2.png" style="border: 1px solid #aaa; border-radius: 10px 10px 10px 10px; box-shadow: 5px 5px 5px #aaa; margin: 20px"/></div>
-- MAGIC 3. Name your cluster. Use your name or initials to easily differentiate your cluster from your coworkers'.
-- MAGIC 4. Select the cluster type: **9.1 LTS ML**.
-- MAGIC 5. Click the **Create Cluster** button.
-- MAGIC <div><img src="https://files.training.databricks.com/images/davis/new_9_1_cluster.png" style="height: 300px; border: 1px solid #aaa; border-radius: 10px 10px 10px 10px; box-shadow: 5px 5px 5px #aaa; margin: 20px"/></div>
-- MAGIC 
-- MAGIC 
-- MAGIC <img alt="Hint" title="Hint" style="vertical-align: text-bottom; position: relative; height:1.75em; top:0.3em" src="https://files.training.databricks.com/static/images/icon-light-bulb.svg"/>&nbsp;**Hint:** Check with your local system administrator to see if there is a recommended default cluster at your company to use for the rest of the class. This could save you  money!

-- COMMAND ----------

-- MAGIC %md-sandbox
-- MAGIC ### Step 2
-- MAGIC 
-- MAGIC Create a new notebook in your home folder:
-- MAGIC 1. Select the **Workspace** icon in the sidebar and then **Home**.
-- MAGIC <div><img src="https://s3-us-west-2.amazonaws.com/files.training.databricks.com/images/eLearning/ucdavis/images/1-3-step-2-1.png" style="height: 200px; margin: 20px"/></div>
-- MAGIC 2. Right-click your home folder.
-- MAGIC 3. Select **Create**.
-- MAGIC 4. Select **Notebook**.
-- MAGIC <div><img src="https://s3-us-west-2.amazonaws.com/files.training.databricks.com/images/eLearning/ucdavis/images/1-3-step-2-2.png" style="height: 150px; border: 1px solid #aaa; border-radius: 10px 10px 10px 10px; box-shadow: 5px 5px 5px #aaa; margin: 20px"/></div>
-- MAGIC 5. Name your notebook `My Notebook`.<br/>
-- MAGIC 6. Set the language to **SQL**.<br/>
-- MAGIC 7. Select the cluster to attach this Notebook.  
-- MAGIC <img alt="Side Note" title="Side Note" style="vertical-align: text-bottom; position: relative; height:1.75em; top:0.05em; transform:rotate(15deg)" src="https://files.training.databricks.com/static/images/icon-note.webp"/> If a cluster is not currently running, this option will not exist.
-- MAGIC 8. Click **Create**.
-- MAGIC <div>
-- MAGIC   <div style="float:left"><img src="https://s3-us-west-2.amazonaws.com/files.training.databricks.com/images/eLearning/ucdavis/images/1-3-step-2-3.png" style="width:400px; border: 1px solid #aaa; border-radius: 10px 10px 10px 10px; box-shadow: 5px 5px 5px #aaa; margin: 20px"/></div>
-- MAGIC </div>

-- COMMAND ----------

-- MAGIC %md-sandbox
-- MAGIC ### Step 3
-- MAGIC 
-- MAGIC Now  you have a notebook, use it to run code.
-- MAGIC 1. In the first cell of your notebook, type `SHOW TABLES`.
-- MAGIC 2. Run the cell: Click the **Run** icon and then select **Run Cell**.
-- MAGIC <div><img src="https://s3-us-west-2.amazonaws.com/files.training.databricks.com/images/eLearning/ucdavis/images/1-3-step-3-1.png" style="width:600px; margin-bottom:1em; border: 1px solid #aaa; border-radius: 10px 10px 10px 10px; box-shadow: 5px 5px 5px #aaa; margin: 20px"/></div>
-- MAGIC <img alt="Side Note" title="Side Note" style="vertical-align: text-bottom; position: relative; height:1.75em; top:0.05em; transform:rotate(15deg)" src="https://files.training.databricks.com/static/images/icon-note.webp"/> **Ctrl-Enter** also runs a cell.
-- MAGIC 
-- MAGIC If this is your first time using Databricks, you should see `OK` printed (there are no tables).

-- COMMAND ----------

-- MAGIC %md-sandbox
-- MAGIC ### Attach & Detach
-- MAGIC 
-- MAGIC If your notebook is detached you can attach it to another cluster:  
-- MAGIC <img src="https://s3-us-west-2.amazonaws.com/files.training.databricks.com/images/eLearning/ucdavis/images/1-3-step-4-attach-and-detach.png" style="border: 1px solid #aaa; border-radius: 10px 10px 10px 10px; box-shadow: 5px 5px 5px #aaa; margin: 20px"/>
-- MAGIC 
-- MAGIC If your notebook is attached to a cluster you can:
-- MAGIC * Detach your notebook from the cluster.
-- MAGIC * Restart the cluster.
-- MAGIC * Attach to another cluster.
-- MAGIC * Open the Spark UI.
-- MAGIC * View the Driver's log files.

-- COMMAND ----------

-- MAGIC %md
-- MAGIC ## Summary
-- MAGIC * Click the down arrow on a folder and select the **Create Notebook** option to create notebooks.
-- MAGIC * Click the down arrow on a folder and select the **Import** option to import notebooks.
-- MAGIC * Select the **Attached/Detached** option directly below the notebook title to attach to a spark cluster 
-- MAGIC * Create clusters using the Clusters button on the left sidebar.

-- COMMAND ----------

-- MAGIC %md
-- MAGIC ## Review
-- MAGIC 
-- MAGIC **Question:** How do you create a Notebook?  
-- MAGIC **Answer:** Sign into Databricks, select the **Home** icon from the sidebar, right-click your home-folder, select **Create**, and then **Notebook**. In the **Create Notebook** dialog, specify the name of your notebook and the default programming language.
-- MAGIC 
-- MAGIC **Question:** How do you create a cluster?  
-- MAGIC **Answer:** Select the **Compute** icon on the sidebar, click the **Create Cluster** button, specify the specific settings for your cluster and then click **Create Cluster**.
-- MAGIC 
-- MAGIC **Question:** How do you attach a notebook to a cluster?  
-- MAGIC **Answer:** If you run a command while detached, you may be prompted to connect to a cluster. To connect to a specific cluster, open the cluster menu by clicking the **Attached/Detached** menu item and then selecting your desired cluster.
-- MAGIC 
-- MAGIC **Question:** What does it mean to "attach" to a cluster?  
-- MAGIC **Answer:** Attaching a notebook to a cluster means that the  current notebook will execute its code on that cluster. You could also say that when attached, the notebook is using the resources of that cluster.

-- COMMAND ----------

-- MAGIC %md
-- MAGIC ## Additional Topics & Resources
-- MAGIC **Q:** Are there additional docs I can reference to find my way around Databricks?  
-- MAGIC **A:** See <a href="https://docs.databricks.com/user-guide/getting-started.html" target="_blank">Getting Started with Databricks</a>.
-- MAGIC 
-- MAGIC **Q:** Where can I learn more about the cluster configuration options?  
-- MAGIC **A:** See <a href="https://docs.databricks.com/user-guide/clusters/index.html" target="_blank">Spark Clusters on Databricks</a>.
-- MAGIC 
-- MAGIC **Q:** Can I import formats other than .dbc files?  
-- MAGIC **A:** Yes, see <a href="https://docs.databricks.com/user-guide/notebooks/index.html#importing-notebooks" target="_blank">Importing Notebooks</a>.
-- MAGIC 
-- MAGIC **Q:** Can I install the courseware notebooks into a non-Databricks distribution of Spark?  
-- MAGIC **A:** No, the files that contain the courseware are in a Databricks specific format (DBC).
-- MAGIC 
-- MAGIC **Q:** Do I have to have a paid Databricks subscription to complete this course?  
-- MAGIC **A:** No, you can sign up for a free <a href="https://databricks.com/try-databricks" target="_blank">Community Edition</a> account from Databricks.

-- COMMAND ----------

-- MAGIC %md-sandbox
-- MAGIC &copy; 2021 Databricks, Inc. All rights reserved.<br/>
-- MAGIC Apache, Apache Spark, Spark and the Spark logo are trademarks of the <a href="http://www.apache.org/">Apache Software Foundation</a>.<br/>
-- MAGIC <br/>
-- MAGIC <a href="https://databricks.com/privacy-policy">Privacy Policy</a> | <a href="https://databricks.com/terms-of-use">Terms of Use</a> | <a href="http://help.databricks.com/">Support</a>
