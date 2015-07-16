.class public final Lalc$a;
.super Lcom/snapchat/android/model/chat/ChatMedia$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lalc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 307
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/model/chat/ChatMedia$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    return-void
.end method


# virtual methods
.method public final synthetic a()Lcom/snapchat/android/model/chat/ChatMedia;
    .locals 1

    .prologue
    .line 304
    new-instance v0, Lalc;

    invoke-direct {v0, p0}, Lalc;-><init>(Lalc$a;)V

    return-object v0
.end method
