prompts:

You are an expert PSpark code analyzer and a Mermaid.js diagram generator.
Your task is to provide a comprehensive and accurate data lineage report for the given Spark code.

Please follow these instructions carefully:

1. Identify source datasets
List all source datasets / tables / files the job reads from.
Mention their path or name.
If possible, describe their schema (or mark as unknown if schema is not in code).
Describe any filters applied on read (e.g., .filter, .where, .option("filter", ...)).

2. Trace transformations
For each dataset, list all transformations applied in order:
filter, map, select, withColumn, drop, etc.
Joins: type (inner, outer, left, right), join keys, any conditions.
Aggregations: groupBy, reduceByKey, agg — include group keys and agg functions.
UDFs or custom logic — include code or pseudo-code.
For each transformation, show code snippets where possible.

3. Show dataset combinations / splits
Describe where datasets are joined, unioned, or split into multiple outputs.

4. Identify outputs
List final output datasets / files / tables.
Describe where data is written (path, table, format).

5. Lineage mapping
Map each output dataset back to its source datasets + transformations.
Clearly trace the flow.

6. Mermaid diagram
Generate a Mermaid diagram to summarize the lineage:
Show source datasets as nodes.
Show transformations as edges/arrows.
Show joins and splits clearly.

7.Wrap the diagram in ```mermaid code fences so it renders properly.

Example format:


```mermaid
graph TD
A[Source: customers.csv] --> B[Filter: country = US]
B --> C[Join: with orders.csv on customer_id]
C --> D[Output: us_customer_orders.parquet]

8. Additional Spark operations
- Mention if there are actions like `cache`, `checkpoint`, `repartition`, and how they impact lineage.
9. Assumptions + unknowns
- If code is incomplete / ambiguous / missing details:
  - **Mark details as *unknown*.**
  - Do not guess values — state explicitly when data is not available.
10. Validation
- Ensure the **Mermaid diagram matches the transformations described**.
- Cross-check for consistency before completing the response.

11. Response length guidance
-If the code is large, first provide a **high-level lineage summary**, then detail each transformation in a second section.

 **IMPORTANT RULES:**  
- Do not make up dataset names, schemas, or paths if not present in code.  
- Use clear, simple language suitable for Spark data engineers.  
- Number your steps clearly.
- Include pseudo-code or code snippets where helpful.

---

Ready? Please produce the detailed lineage report following the instructions above.




| Prompting Technique             | How we applied it                               |
| ------------------------------- | ----------------------------------------------- |
| **Role prompting**              | Declared expert persona (PySpark + Mermaid)     |
| **Chain-of-thought prompting**  | Numbered, step-by-step instructions             |
| **Output formatting guidance**  | Specified code fences, structure                |
| **Few-shot prompting**          | Provided Mermaid example                        |
| **Audience adaptation**         | Specified Spark data engineer-friendly tone     |
| **Uncertainty awareness**       | Instructed to mark unknowns, no guessing        |
| **Critical thinking**           | Asked for risk rationale + mitigation           |
| **Self-verification prompting** | Asked to cross-check diagram vs description     |
| **Length control**              | Guided on high-level vs detailed for large code |
| **Task decomposition**          | Broke down into traceable sub-tasks             |
| **Anti-hallucination**          | Explicitly banned making up details             |



💯 **Awesome follow-up! Let’s break down what *prompt engineering techniques* we applied in this enhanced prompt, mapped directly to best practices from [PromptingGuide.ai](https://www.promptingguide.ai/).**

---

## 🌟 **Prompt Engineering Techniques Used**

---

### 1️⃣ **Role prompting**

> ✨ We defined:
>
> > *"You are an expert PySpark code analyzer and a Mermaid.js diagram generator."*

* ✅ This primes the model to adopt the mindset of an expert with specific skills.
* 📌 *Technique:* Role prompting

---

### 2️⃣ **Step-by-step / chain-of-thought prompting**

> ✨ We listed:
>
> * 11 clear steps (source identification, transformations, outputs, diagram, risks, validation, etc.)

* ✅ This guides the model to reason sequentially and avoid skipping logic.
* 📌 *Technique:* Chain-of-thought / step-by-step reasoning

---

### 3️⃣ **Output structure guidance**

> ✨ We specified:
>
> * Numbered sections
> * Markdown code fences (` ```mermaid `) for diagrams
> * Include code snippets where helpful
> * High-level + detailed output for large code

* ✅ This ensures consistent, structured output.
* 📌 *Technique:* Output formatting control

---

### 4️⃣ **Example prompting (few-shot prompting)**

> ✨ We provided:
>
> ````
> ```mermaid
> graph TD
> A[Source: customers.csv] --> B[Filter: country = US]
> B --> C[Join: with orders.csv on customer_id]
> C --> D[Output: us_customer_orders.parquet]
> ````
>
> ```
> ```

* ✅ The model now has a concrete example to mirror.
* 📌 *Technique:* Few-shot prompting

---

### 5️⃣ **Audience targeting**

> ✨ We specified:
>
> > *"Use clear, simple language suitable for Spark data engineers."*

* ✅ This helps the model tailor tone, avoid unnecessary jargon.
* 📌 *Technique:* Audience adaptation

---

### 6️⃣ **Assumption handling / uncertainty disclosure**

> ✨ We added:
>
> > *"Mark details as *unknown*. Do not guess values — state explicitly when data is not available."*

* ✅ This guards against hallucinations.
* 📌 *Technique:* Uncertainty awareness / hallucination mitigation

---

### 7️⃣ **Critical thinking / risk awareness**

> ✨ We required:
>
> > *"List any potential data quality or transformation risks. For each risk: explain why it is a risk and suggest mitigation."*

* ✅ This pushes the model to assess, not just describe.
* 📌 *Technique:* Encourage critical thinking

---

### 8️⃣ **Validation prompting**

> ✨ We specified:
>
> > *"Ensure the Mermaid diagram matches the transformations described. Cross-check for consistency."*

* ✅ This prompts internal validation.
* 📌 *Technique:* Self-verification prompting

---

### 9️⃣ **Length control**

> ✨ We instructed:
>
> > *"If the code is large, first provide a high-level lineage summary, then detail each transformation."*

* ✅ Helps manage token budget / output length.
* 📌 *Technique:* Length control guidance

---

### 10️⃣ **Task decomposition**

> ✨ The prompt breaks a complex task into specific sub-tasks:
> source detection → transformation tracing → joins → outputs → diagram → risks → validation

* ✅ This prevents the model from being overwhelmed.
* 📌 *Technique:* Task decomposition

---

### 11️⃣ **Explicit instructions to avoid hallucination**

> ✨ We said:
>
> > *"Do not make up dataset names, schemas, or paths if not present in code."*

* ✅ This directly reduces hallucination risk.
* 📌 *Technique:* Anti-hallucination control

---

## ✅ **Summary table**

| Prompting Technique             | How we applied it                               |
| ------------------------------- | ----------------------------------------------- |
| **Role prompting**              | Declared expert persona (PySpark + Mermaid)     |
| **Chain-of-thought prompting**  | Numbered, step-by-step instructions             |
| **Output formatting guidance**  | Specified code fences, structure                |
| **Few-shot prompting**          | Provided Mermaid example                        |
| **Audience adaptation**         | Specified Spark data engineer-friendly tone     |
| **Uncertainty awareness**       | Instructed to mark unknowns, no guessing        |
| **Critical thinking**           | Asked for risk rationale + mitigation           |
| **Self-verification prompting** | Asked to cross-check diagram vs description     |
| **Length control**              | Guided on high-level vs detailed for large code |
| **Task decomposition**          | Broke down into traceable sub-tasks             |
| **Anti-hallucination**          | Explicitly banned making up details             |

---

## 💡 **What makes this prompt strong?**

✅ Clear role + goals
✅ Detailed steps = structured reasoning
✅ No ambiguity = fewer hallucinations
✅ Example given = better output mimicry
✅ Encourages *thinking* not just *summarizing*

---

👉 **If you'd like, I can convert this into a reusable template (for Notion, VS Code, or as a JSON schema for tooling). Want that?** 🚀





import os
import traceback

# Import Ollama specific classes
from langchain_community.chat_models import ChatOllama
from langchain_core.messages import HumanMessage, SystemMessage

# --- IMPORTANT: Configure Logging ---

# Enable verbose litellm logging for more detailed error tracing if LLM calls fail.
os.environ["LITELLM_LOG"] = "DEBUG"

# --- LLM Initialization (for Ollama) ---

# Specify the Ollama model to use
# CONSIDER A LARGER MODEL FOR COMPLEX PROMPTS (e.g., "llama3", "mistral", "gemma:7b")
OLLAMA_MODEL_ID = "gemma3:4b"
# Default Ollama API endpoint
OLLAMA_BASE_URL = "http://localhost:11434"

print(f"Initializing Ollama Chat model: {OLLAMA_MODEL_ID} at {OLLAMA_BASE_URL}")
try:
    # Initialize ChatOllama to connect to your local Ollama server
    # Parameters like temperature, top_k, top_p, repetition_penalty are passed directly
    hf_llm_instance = ChatOllama(
        model=OLLAMA_MODEL_ID,
        base_url=OLLAMA_BASE_URL,
        temperature=0.1,
        num_predict=2048, # Increased num_predict for potentially longer outputs
        top_k=50,
        top_p=0.95,
        repeat_penalty=1.0,
    )

    # --- Test LLM Directly ---
    print(f"\n--- Testing Ollama LLM directly with {OLLAMA_MODEL_ID} ---")
    test_messages = [
        HumanMessage(content="What is the capital of Germany?") # Your test question
    ]
    test_response = hf_llm_instance.invoke(test_messages)
    print("Direct LLM Test Response:", test_response.content)
    print("\nLLM direct test successful. Proceeding with analysis.")

except Exception as e:
    print(f"\nERROR: Failed to initialize or test Ollama LLM: {e}")
    traceback.print_exc()
    print("\nDetailed Cause: This error usually means:")
    print("1. The Ollama server is not running. Start Ollama from your applications or command line.")
    print(f"2. The model '{OLLAMA_MODEL_ID}' is not downloaded in Ollama. Run: `ollama pull {OLLAMA_MODEL_ID}`")
    print(f"3. Ollama is not running on its default port {OLLAMA_BASE_URL.split(':')[-1]}.")
    print("Exiting due to LLM initialization/test failure.")
    exit()

print("\n--- LLM initialized successfully. Proceeding with analysis ---")

# --- Sample Spark code input ---
spark_code_input = """
from pyspark.sql import SparkSession
from pyspark.sql.functions import col

def initialize_spark_session(app_name):
    return SparkSession.builder.appName(app_name).getOrCreate()

def load_data(spark, path, format="parquet"):
    print(f"Reading data from {path} in {format} format.")
    return spark.read.format(format).load(path)

def transform_data(df):
    print("Applying transformations...")
    return df.withColumn("new_col", col("old_col") * 2)

def write_data(df, path, mode="overwrite", format="parquet"):
    df.write.mode(mode).format(format).save(path)

if __name__ == "__main__":
    spark = initialize_spark_session("PySparkCodeAnalyzer")

    input_path = "s3a://my-bucket/input_data"
    output_path = "s3a://my-bucket/output_data"
    another_input_path = "hdfs://namenode/another_source.json" # Added another source for complexity

    df_raw = load_data(spark, input_path, format="csv") # Changed format
    df_intermediate = load_data(spark, another_input_path, format="json") # Load another source
    df_joined = df_raw.join(df_intermediate, "id", "inner") # Added a join
    df_transformed = transform_data(df_joined) # Transform the joined DF
    write_data(df_transformed, output_path, mode="append", format="orc") # Changed format and mode

    spark.stop()
"""

# --- Prompt Engineering for Analysis and Mermaid Diagram ---

# Build the prompt content by concatenating individual lines.
prompt_lines = [
    "You are an expert PySpark code analyzer and a Mermaid.js diagram generator.\n\n",
    "Your task is to provide a comprehensive data lineage report for the given PySpark code. Follow these steps meticulously:\n\n",
    "1.  **Identify and list all source datasets/tables/files** the job reads from. For each source, include its full path and format.\n",
    "2.  **For each source dataset, describe its schema (inferred) and any filters applied on read.** If schema is not explicitly defined in code, state it's inferred. If no filters, state 'None'.\n",
    "3.  **Trace every transformation applied on the datasets**, providing details for each type:\n",
    "    * **Filter, map, select, withColumn, drop, etc.:** Explain the logic (e.g., 'filtering where df1.country = 'IN'', 'adding new_col by doubling old_col').\n",
    "    * **Joins (inner, outer, left, right):** Explain join keys and types (e.g., 'inner join on id between df_raw and df_intermediate').\n",
    "    * **Aggregations (groupBy, reduceByKey):** Provide details on grouping keys and aggregation functions.\n",
    "    * **Any user-defined functions (UDFs) or custom transformations:** Describe their purpose and how they alter data.\n",
    "4.  **Show how datasets are combined or split** during the job (e.g., 'df_raw and df_intermediate are combined into df_joined').\n",
    "5.  **Identify the final output dataset(s)**: list where data is written or stored, including full path, format, and write mode (e.g., 'overwrite', 'append').\n",
    "6.  **Explain the lineage by mapping each output dataset back to its source datasets and transformations.** This should be a narrative flow (e.g., 'Output X is derived from Source A, transformed by Y, joined with Source B, then aggregated by Z...').\n",
    "7.  **Provide code snippets or pseudo-code illustrating each significant transformation step** where applicable, to support explanations.\n",
    "8.  **If multiple Spark stages or actions are present** (e.g., `cache`, `checkpoint`, `repartition`), explain their impact on data lineage and performance.\n",
    "9.  **Summarize the entire data lineage in a Mermaid diagram** format, showing datasets as nodes and transformations (including joins) as edges/arrows. The diagram must be `graph TD` (top-down).\n",
    "    * **Sources:** Use `Source[path (format)]` format.\n",
    "    * **DataFrames:** Use `DF[variable_name]` or `DF(variable_name)` for clarity.\n",
    "    * **Transformations:** Use `Transform[Description]` (e.g., `Transform[Add new_col]`, `Join[Inner join on id]`).\n",
    "    * **Sinks:** Use `Sink[path (format, mode)]` format.\n",
    "    * **The Mermaid.js diagram MUST be enclosed within a single ```mermaid ... ``` block.**\n",
    "10. **Highlight any potential data quality or transformation risks observed in the code.** (e.g., 'potential data loss due to inner join', 'schema inference risk with CSV without specified schema').\n\n",
    "--- **Additional Rules:** ---\n",
    "* Use clear, simple language suitable for data engineers familiar with Spark.\n",
    "* Avoid jargon unless defined.\n",
    "* Number each step clearly in your report.\n",
    "* Include Spark code examples to support explanations where relevant.\n",
    "* If the code uses external systems (Hive, Delta Lake, Kafka, etc.), explain their impact on lineage.\n",
    "* Mention assumptions if the code is incomplete or ambiguous.\n\n",
    "--- **PySpark Code to Analyze:** ---\n",
    "```python\n",
    f"{spark_code_input}\n", # Embed the spark_code_input using an f-string here
    "```\n",
    "\n**Please provide the detailed data lineage report as instructed, including the Mermaid diagram for visualization.**"
]

prompt_content = "".join(prompt_lines)

# Prepare the messages for the ChatOllama model
messages_for_llm = [
    SystemMessage(content="You are an expert PySpark code analyzer and Mermaid.js diagram generator. Provide a comprehensive, structured report and a correct Mermaid diagram as specified."),
    HumanMessage(content=prompt_content)
]

print("\nSending request to LLM for analysis and diagram generation...")
try:
    response_from_llm = hf_llm_instance.invoke(messages_for_llm)
    full_output = response_from_llm.content

    print("\n\n###########################################")
    print("## LLM Generated Analysis and Diagram  ##")
    print("###########################################\n")
    print(full_output)

    # Optional: Extract just the Mermaid diagram for easier copying/viewing
    mermaid_start = full_output.find("```mermaid")
    # Search for the closing ``` after the opening ```mermaid
    if mermaid_start != -1:
        mermaid_end = full_output.find("```", mermaid_start + len("```mermaid"))
        if mermaid_end != -1:
            mermaid_code = full_output[mermaid_start : mermaid_end + 3]
            print("\n--- Extracted Mermaid Diagram ---")
            print(mermaid_code)
            print("-------------------------------")
        else:
            print("\n--- Could not find closing ``` for Mermaid diagram. ---")
            print("Please check the LLM's output directly above.")
    else:
        print("\n--- Could not find Mermaid diagram (```mermaid block not found) ---")
        print("Please check the LLM's output directly above to see if it generated the Mermaid block.")

except Exception as e:
    print(f"\nERROR: LLM failed to generate response: {e}")
    traceback.print_exc()
