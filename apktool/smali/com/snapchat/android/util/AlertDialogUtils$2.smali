.class final Lcom/snapchat/android/util/AlertDialogUtils$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/util/AlertDialogUtils;->a(Landroid/content/Context;Laje;Laio;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$snap:Laje;

.field final synthetic val$user:Lajv;


# direct methods
.method constructor <init>(Laje;Lajv;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/snapchat/android/util/AlertDialogUtils$2;->val$snap:Laje;

    iput-object p2, p0, Lcom/snapchat/android/util/AlertDialogUtils$2;->val$user:Lajv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 270
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/snapchat/android/util/AlertDialogUtils$2;->val$snap:Laje;

    invoke-static {v0, v1}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(ZLaje;)V

    .line 271
    return-void
.end method
