.class final Lzr$3;
.super Lpy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laji;

.field final synthetic b:Lzr;


# direct methods
.method constructor <init>(Lzr;Laji;Laji;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lzr$3;->b:Lzr;

    iput-object p3, p0, Lzr$3;->a:Laji;

    invoke-direct {p0, p2}, Lpy;-><init>(Laji;)V

    return-void
.end method


# virtual methods
.method protected final a(Lalp;)V
    .locals 2

    .prologue
    .line 147
    invoke-super {p0, p1}, Lpy;->a(Lalp;)V

    .line 148
    invoke-static {}, Lzr;->b()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lzr$3;->a:Laji;

    iget-object v1, v1, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    return-void
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 144
    check-cast p1, Lalp;

    invoke-virtual {p0, p1}, Lzr$3;->a(Lalp;)V

    return-void
.end method
