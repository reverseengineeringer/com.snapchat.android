.class final Lcom/snapchat/android/HttpMetricsActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/HttpMetricsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/HttpMetricsActivity;


# direct methods
.method constructor <init>(Lcom/snapchat/android/HttpMetricsActivity;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/snapchat/android/HttpMetricsActivity$1;->a:Lcom/snapchat/android/HttpMetricsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/snapchat/android/HttpMetricsActivity$1;->a:Lcom/snapchat/android/HttpMetricsActivity;

    invoke-static {v0}, Laaq;->a(Landroid/content/Context;)V

    .line 44
    return-void
.end method
