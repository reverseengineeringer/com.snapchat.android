.class final Lnet/hockeyapp/android/FeedbackActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hockeyapp/android/FeedbackActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lnet/hockeyapp/android/FeedbackActivity;


# direct methods
.method constructor <init>(Lnet/hockeyapp/android/FeedbackActivity;)V
    .locals 0

    .prologue
    .line 421
    iput-object p1, p0, Lnet/hockeyapp/android/FeedbackActivity$1;->a:Lnet/hockeyapp/android/FeedbackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 423
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity$1;->a:Lnet/hockeyapp/android/FeedbackActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnet/hockeyapp/android/FeedbackActivity;->a(Lnet/hockeyapp/android/FeedbackActivity;Lbwr;)Lbwr;

    .line 424
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 425
    return-void
.end method
