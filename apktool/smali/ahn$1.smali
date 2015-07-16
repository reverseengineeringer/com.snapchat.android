.class final Lahn$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lahn;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lahn$b;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lahn;


# direct methods
.method constructor <init>(Lahn;Lahn$b;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lahn$1;->c:Lahn;

    iput-object p2, p0, Lahn$1;->a:Lahn$b;

    iput-object p3, p0, Lahn$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 61
    iget-object v0, p0, Lahn$1;->c:Lahn;

    invoke-static {v0}, Lahn;->a(Lahn;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lahn$1;->c:Lahn;

    invoke-static {v1}, Lahn;->b(Lahn;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lahn$1;->c:Lahn;

    invoke-static {v2}, Lahn;->c(Lahn;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lahn$1$1;

    invoke-direct {v3, p0}, Lahn$1$1;-><init>(Lahn$1;)V

    invoke-static {v0, v1, v2, v3}, Lcom/snapchat/android/util/AlertDialogUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/util/AlertDialogUtils$a;)V

    .line 75
    return-void
.end method
