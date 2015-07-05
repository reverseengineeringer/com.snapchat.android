.class final Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;->a(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment$4;->a:Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 235
    invoke-static {v1}, Lcom/snapchat/android/analytics/AnalyticsEvents;->e(Z)V

    .line 236
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment$4;->a:Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;->a(Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;)Lcom/snapchat/android/analytics/RegistrationAnalytics;

    invoke-static {v1}, Lcom/snapchat/android/analytics/RegistrationAnalytics;->b(Z)V

    .line 237
    return-void
.end method
