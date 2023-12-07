from django import forms
from django.contrib import admin
from redirect.models import Redirect


class PostForm(forms.ModelForm):
    def clean(self):
        alias = self.cleaned_data["alias"]
        if alias == "admin":
            raise forms.ValidationError("Alias cannot be 'admin'", code="invalid")


@admin.register(Redirect)
class PostAdmin(admin.ModelAdmin):
    form = PostForm
    list_display = ["alias", "target_url", "create_datetime", "update_datetime"]
