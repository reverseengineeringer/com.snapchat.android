.class final Lcom/snapchat/android/fragments/signup/SignupFragment$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/signup/SignupFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/signup/SignupFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/signup/SignupFragment;)V
    .locals 0

    .prologue
    .line 405
    iput-object p1, p0, Lcom/snapchat/android/fragments/signup/SignupFragment$11;->a:Lcom/snapchat/android/fragments/signup/SignupFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDateSet(Landroid/widget/DatePicker;III)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v2, 0x1

    .line 407
    new-instance v3, Ljava/util/GregorianCalendar;

    invoke-direct {v3, p2, p3, p4}, Ljava/util/GregorianCalendar;-><init>(III)V

    .line 409
    iget-object v4, p0, Lcom/snapchat/android/fragments/signup/SignupFragment$11;->a:Lcom/snapchat/android/fragments/signup/SignupFragment;

    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment$11;->a:Lcom/snapchat/android/fragments/signup/SignupFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/signup/SignupFragment;->l(Lcom/snapchat/android/fragments/signup/SignupFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment$11;->a:Lcom/snapchat/android/fragments/signup/SignupFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/signup/SignupFragment;->m(Lcom/snapchat/android/fragments/signup/SignupFragment;)Ljava/util/GregorianCalendar;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    invoke-virtual {v3, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    if-eq v0, v5, :cond_6

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v4, v0}, Lcom/snapchat/android/fragments/signup/SignupFragment;->c(Lcom/snapchat/android/fragments/signup/SignupFragment;Z)Z

    .line 410
    iget-object v4, p0, Lcom/snapchat/android/fragments/signup/SignupFragment$11;->a:Lcom/snapchat/android/fragments/signup/SignupFragment;

    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment$11;->a:Lcom/snapchat/android/fragments/signup/SignupFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/signup/SignupFragment;->n(Lcom/snapchat/android/fragments/signup/SignupFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment$11;->a:Lcom/snapchat/android/fragments/signup/SignupFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/signup/SignupFragment;->m(Lcom/snapchat/android/fragments/signup/SignupFragment;)Ljava/util/GregorianCalendar;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    invoke-virtual {v3, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    if-eq v0, v5, :cond_7

    :cond_1
    move v0, v2

    :goto_1
    invoke-static {v4, v0}, Lcom/snapchat/android/fragments/signup/SignupFragment;->d(Lcom/snapchat/android/fragments/signup/SignupFragment;Z)Z

    .line 411
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment$11;->a:Lcom/snapchat/android/fragments/signup/SignupFragment;

    iget-object v4, p0, Lcom/snapchat/android/fragments/signup/SignupFragment$11;->a:Lcom/snapchat/android/fragments/signup/SignupFragment;

    invoke-static {v4}, Lcom/snapchat/android/fragments/signup/SignupFragment;->o(Lcom/snapchat/android/fragments/signup/SignupFragment;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/snapchat/android/fragments/signup/SignupFragment$11;->a:Lcom/snapchat/android/fragments/signup/SignupFragment;

    invoke-static {v4}, Lcom/snapchat/android/fragments/signup/SignupFragment;->m(Lcom/snapchat/android/fragments/signup/SignupFragment;)Ljava/util/GregorianCalendar;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v7}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    if-eq v4, v5, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    invoke-static {v0, v1}, Lcom/snapchat/android/fragments/signup/SignupFragment;->e(Lcom/snapchat/android/fragments/signup/SignupFragment;Z)Z

    .line 414
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment$11;->a:Lcom/snapchat/android/fragments/signup/SignupFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/signup/SignupFragment;->m(Lcom/snapchat/android/fragments/signup/SignupFragment;)Ljava/util/GregorianCalendar;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    invoke-virtual {v3, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment$11;->a:Lcom/snapchat/android/fragments/signup/SignupFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/signup/SignupFragment;->m(Lcom/snapchat/android/fragments/signup/SignupFragment;)Ljava/util/GregorianCalendar;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    invoke-virtual {v3, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment$11;->a:Lcom/snapchat/android/fragments/signup/SignupFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/signup/SignupFragment;->m(Lcom/snapchat/android/fragments/signup/SignupFragment;)Ljava/util/GregorianCalendar;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    invoke-virtual {v3, v7}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_5

    .line 417
    :cond_4
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment$11;->a:Lcom/snapchat/android/fragments/signup/SignupFragment;

    invoke-static {v0, v3}, Lcom/snapchat/android/fragments/signup/SignupFragment;->a(Lcom/snapchat/android/fragments/signup/SignupFragment;Ljava/util/GregorianCalendar;)Ljava/util/GregorianCalendar;

    .line 418
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment$11;->a:Lcom/snapchat/android/fragments/signup/SignupFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/signup/SignupFragment;->p(Lcom/snapchat/android/fragments/signup/SignupFragment;)Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "MM/dd/yyyy"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/snapchat/android/fragments/signup/SignupFragment$11;->a:Lcom/snapchat/android/fragments/signup/SignupFragment;

    invoke-static {v2}, Lcom/snapchat/android/fragments/signup/SignupFragment;->m(Lcom/snapchat/android/fragments/signup/SignupFragment;)Ljava/util/GregorianCalendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 419
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment$11;->a:Lcom/snapchat/android/fragments/signup/SignupFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/signup/SignupFragment;->d(Lcom/snapchat/android/fragments/signup/SignupFragment;)V

    .line 421
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->z()V

    .line 423
    :cond_5
    return-void

    :cond_6
    move v0, v1

    .line 409
    goto/16 :goto_0

    :cond_7
    move v0, v1

    .line 410
    goto/16 :goto_1
.end method
