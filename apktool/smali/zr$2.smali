.class public final Lzr$2;
.super Laxt;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Laji;

.field final synthetic b:Lzr;


# direct methods
.method public constructor <init>(Lzr;Laji;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lzr$2;->b:Lzr;

    iput-object p2, p0, Lzr$2;->a:Laji;

    invoke-direct {p0}, Laxt;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 90
    check-cast p1, Ljava/lang/Void;

    iget-object v0, p0, Lzr$2;->b:Lzr;

    iget-object v1, p0, Lzr$2;->a:Laji;

    invoke-virtual {v0, v1}, Lzr;->a(Laji;)V

    invoke-static {}, Lzr;->a()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lzr$2;->a:Laji;

    iget-object v1, v1, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-super {p0, p1}, Laxt;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method
