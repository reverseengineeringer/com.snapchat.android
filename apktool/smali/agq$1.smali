.class final Lagq$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lagq;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lagq$b;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lagq;


# direct methods
.method constructor <init>(Lagq;Lagq$b;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lagq$1;->c:Lagq;

    iput-object p2, p0, Lagq$1;->a:Lagq$b;

    iput-object p3, p0, Lagq$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 61
    iget-object v0, p0, Lagq$1;->c:Lagq;

    invoke-static {v0}, Lagq;->a(Lagq;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lagq$1;->c:Lagq;

    invoke-static {v1}, Lagq;->b(Lagq;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lagq$1;->c:Lagq;

    invoke-static {v2}, Lagq;->c(Lagq;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lagq$1$1;

    invoke-direct {v3, p0}, Lagq$1$1;-><init>(Lagq$1;)V

    invoke-static {v0, v1, v2, v3}, Lcom/snapchat/android/util/AlertDialogUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/util/AlertDialogUtils$a;)V

    .line 75
    return-void
.end method
