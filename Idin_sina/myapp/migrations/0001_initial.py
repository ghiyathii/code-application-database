# Generated by Django 4.2.2 on 2023-06-13 17:17

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Appointment',
            fields=[
                ('Appointment_IP', models.IntegerField(primary_key=True, serialize=False)),
                ('patient_name', models.CharField(max_length=100)),
                ('patient_contact', models.CharField(max_length=100)),
                ('Appointment_date', models.CharField(max_length=100)),
                ('appointment_time', models.CharField(max_length=100)),
                ('doctor_name', models.CharField(max_length=100)),
                ('Appointment_reason', models.CharField(max_length=100)),
                ('Appointment_Status', models.CharField(max_length=100)),
            ],
        ),
        migrations.CreateModel(
            name='Doctor',
            fields=[
                ('Doctor_IP', models.IntegerField(primary_key=True, serialize=False)),
                ('Doctor_name', models.CharField(max_length=100)),
                ('Doctor_address', models.CharField(max_length=100)),
                ('Doctor_Connection', models.CharField(max_length=100)),
                ('Doctor_Specialization', models.CharField(max_length=100)),
                ('Doctor_Certificate', models.CharField(max_length=100)),
                ('Doctor_availability', models.CharField(max_length=100)),
                ('Doctor_Appointments', models.CharField(max_length=100)),
            ],
        ),
        migrations.CreateModel(
            name='Patinet',
            fields=[
                ('Patient_IP', models.IntegerField(primary_key=True, serialize=False)),
                ('Patient_name', models.CharField(max_length=100)),
                ('patient_address', models.CharField(max_length=100)),
                ('patient_contact', models.CharField(max_length=100)),
                ('patient_age', models.CharField(max_length=2)),
                ('patient_gender', models.CharField(max_length=2)),
                ('patient_medicalhistory', models.CharField(max_length=100)),
                ('patient_insurance', models.CharField(max_length=100)),
                ('prescription', models.CharField(max_length=100)),
            ],
        ),
        migrations.CreateModel(
            name='Prescription',
            fields=[
                ('Prescription_IP', models.IntegerField(primary_key=True, serialize=False)),
                ('patient_name', models.CharField(max_length=100)),
                ('Doctor_name', models.CharField(max_length=100)),
                ('Prescription_date', models.CharField(max_length=100)),
                ('Prescription_name', models.CharField(max_length=100)),
                ('Prescription_dose', models.CharField(max_length=100)),
            ],
        ),
    ]
