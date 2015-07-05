.class final Lahq$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lahq;->a(Landroid/content/Context;Lahq$a;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lahq$a;

.field final synthetic b:Lahq;


# direct methods
.method constructor <init>(Lahq;Lahq$a;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lahq$2;->b:Lahq;

    iput-object p2, p0, Lahq$2;->a:Lahq$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lahq$2;->a:Lahq$a;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lahq$2;->a:Lahq$a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lahq$a;->a(Z)V

    .line 112
    :cond_0
    return-void
.end method
