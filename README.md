# Disclaimer
This project's sole purpose is to show my understanding of SQL basics.

By no means it is a production-ready code. In a real-life project, it could've looked much different.

And of course, I would never use pure SQL to solve such a task unless it was for the demonstration.

Please, consider this as a part of my résumé and nothing more.

# How To
1. Use MS SQL Server 2017 or higher
2. Run the query `CREATE DATABASE [CurriculumVitae]` or create a database named `CurriculumVitae` via SSMS
3. Run `01_schema.sql` and then `02_data.sql` from the `scripts` folder
4. Run `EXEC dbo.GetCV 1`

or simply check out the following screenshots:

<div align="center">
<img src="https://raw.githubusercontent.com/Smileek/cv-code/main/screenshots/db_diagram.png" alt="diagram" width="800"/>
<img src="https://raw.githubusercontent.com/Smileek/cv-code/main/screenshots/output.png" alt="output" width="300"/>
</div>

<br>
The output is a bit messy since MS SQL Server doesn't support formatting. Once again, this whole thing is about SQL only: my human-readable résumé in PDF is where you've probably found this GitHub project link.
