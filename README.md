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
