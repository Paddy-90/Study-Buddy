# Generated by Django 5.0.1 on 2024-01-16 15:36

from django.db import migrations


class Migration(migrations.Migration):
    dependencies = [
        ("users", "0008_user_agent"),
    ]

    operations = [
        migrations.RemoveField(
            model_name="user",
            name="agent",
        ),
    ]
