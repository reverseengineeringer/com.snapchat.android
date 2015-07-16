.class final Lbwy$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbwy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONArray;

.field final synthetic b:Lbwy;


# direct methods
.method constructor <init>(Lbwy;Lorg/json/JSONArray;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lbwy$2;->b:Lbwy;

    iput-object p2, p0, Lbwy$2;->a:Lorg/json/JSONArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 123
    iget-object v0, p0, Lbwy$2;->b:Lbwy;

    invoke-static {v0}, Lbwy;->a(Lbwy;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "[]"

    invoke-static {v0, v1}, Lbxm;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 127
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lbwy$2;->b:Lbwy;

    invoke-static {v1}, Lbwy;->a(Lbwy;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 128
    invoke-static {}, Lbxl;->a()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lbxl;->a(Ljava/lang/ref/WeakReference;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lbwy$2;->b:Lbwy;

    iget-object v1, p0, Lbwy$2;->a:Lorg/json/JSONArray;

    invoke-static {v0, v1}, Lbwy;->a(Lbwy;Lorg/json/JSONArray;)V

    .line 134
    :goto_0
    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lbwy$2;->b:Lbwy;

    iget-object v1, p0, Lbwy$2;->a:Lorg/json/JSONArray;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lbwy;->a(Lbwy;Lorg/json/JSONArray;Ljava/lang/Boolean;)V

    goto :goto_0
.end method
