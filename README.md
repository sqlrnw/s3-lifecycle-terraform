# S3 Lifecycle Management with Terraform

## 🎯 الهدف
إدارة تكلفة التخزين عبر نقل الملفات تلقائيًا حسب عمرها داخل الـ Bucket.

## 🧠 السياسة
- بعد 30 يوم: الملفات تنتقل إلى Standard-IA
- بعد 90 يوم: الملفات تنتقل إلى Glacier
- بعد 365 يوم: يتم حذفها تلقائيًا

## 🛠️ Terraform Resources
- aws_s3_bucket
- aws_s3_bucket_lifecycle_configuration

## 🔍 ملاحظات
- يمكن تعديل الأيام بسهولة من المتغيرات
- هذا النظام يطبق على كل الملفات (filter `{}`)

