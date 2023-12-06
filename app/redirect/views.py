from django.shortcuts import get_object_or_404, redirect

from redirect.models import Redirect


def redirect_view(request, alias):
    redirect_entry = get_object_or_404(Redirect, alias=alias)
    return redirect(redirect_entry.target_url, permanent=True)
