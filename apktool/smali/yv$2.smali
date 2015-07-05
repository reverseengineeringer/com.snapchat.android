.class public final Lyv$2;
.super Lawv;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Laim;

.field final synthetic b:Lyv;


# direct methods
.method public constructor <init>(Lyv;Laim;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lyv$2;->b:Lyv;

    iput-object p2, p0, Lyv$2;->a:Laim;

    invoke-direct {p0}, Lawv;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 90
    check-cast p1, Ljava/lang/Void;

    iget-object v0, p0, Lyv$2;->b:Lyv;

    iget-object v1, p0, Lyv$2;->a:Laim;

    invoke-virtual {v0, v1}, Lyv;->a(Laim;)V

    invoke-static {}, Lyv;->a()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lyv$2;->a:Laim;

    iget-object v1, v1, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-super {p0, p1}, Lawv;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method
