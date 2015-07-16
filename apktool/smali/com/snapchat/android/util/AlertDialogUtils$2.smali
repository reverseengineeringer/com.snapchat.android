.class final Lcom/snapchat/android/util/AlertDialogUtils$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/util/AlertDialogUtils;->a(Landroid/content/Context;Laka;Lajk;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$snap:Laka;

.field final synthetic val$user:Lakp;


# direct methods
.method constructor <init>(Laka;Lakp;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lcom/snapchat/android/util/AlertDialogUtils$2;->val$snap:Laka;

    iput-object p2, p0, Lcom/snapchat/android/util/AlertDialogUtils$2;->val$user:Lakp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 272
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/snapchat/android/util/AlertDialogUtils$2;->val$snap:Laka;

    invoke-static {v0, v1}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(ZLaka;)V

    .line 273
    return-void
.end method
