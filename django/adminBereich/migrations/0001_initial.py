# Generated by Django 5.0.1 on 2024-02-16 07:44

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='AdminDocuments',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=255)),
                ('filePath', models.CharField(max_length=255)),
                ('institution', models.CharField(max_length=255)),
                ('modul', models.CharField(max_length=255)),
                ('description', models.CharField(max_length=255)),
            ],
        ),
    ]