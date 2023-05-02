# Generated by Django 4.1.7 on 2023-05-02 10:52

from django.db import migrations, models
import make_dataset.models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Dataset',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('parameters_of_generation', models.JSONField(default=make_dataset.models.parameters_of_generation_default, verbose_name='ContactInfo')),
            ],
        ),
    ]
