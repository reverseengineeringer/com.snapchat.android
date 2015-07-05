.class final Lyv$3;
.super Lph;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laim;

.field final synthetic b:Lyv;


# direct methods
.method constructor <init>(Lyv;Laim;Laim;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lyv$3;->b:Lyv;

    iput-object p3, p0, Lyv$3;->a:Laim;

    invoke-direct {p0, p2}, Lph;-><init>(Laim;)V

    return-void
.end method


# virtual methods
.method protected final a(Laku;)V
    .locals 2

    .prologue
    .line 147
    invoke-super {p0, p1}, Lph;->a(Laku;)V

    .line 148
    invoke-static {}, Lyv;->b()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lyv$3;->a:Laim;

    iget-object v1, v1, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    return-void
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 144
    check-cast p1, Laku;

    invoke-virtual {p0, p1}, Lyv$3;->a(Laku;)V

    return-void
.end method
