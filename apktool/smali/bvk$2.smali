.class final Lbvk$2;
.super Lbvp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbvk;->a(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lbvk;


# direct methods
.method constructor <init>(Lbvk;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lbvk$2;->b:Lbvk;

    iput-object p2, p0, Lbvk$2;->a:Landroid/app/Activity;

    invoke-direct {p0}, Lbvp;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    invoke-static {}, Lbvm;->b()Lbvn;

    move-result-object v0

    .line 200
    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {v0, p1}, Lbvn;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 204
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lbvy;)V
    .locals 0

    .prologue
    .line 196
    return-void
.end method

.method public final a(Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 189
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lbvk$2;->b:Lbvk;

    iget-object v1, p0, Lbvk$2;->a:Landroid/app/Activity;

    invoke-static {v0, v1}, Lbvk;->a(Lbvk;Landroid/app/Activity;)V

    .line 192
    :cond_0
    return-void
.end method
