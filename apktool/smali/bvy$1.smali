.class final Lbvy$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbvy;->a(Ljava/lang/Long;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbvy;


# direct methods
.method constructor <init>(Lbvy;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lbvy$1;->a:Lbvy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lbvy$1;->a:Lbvy;

    iget-object v0, v0, Lbvy;->b:Lbvp;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbvp;->a(Ljava/lang/Boolean;)V

    .line 229
    return-void
.end method
