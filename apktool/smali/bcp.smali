.class public final Lbcp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final reason:Ljava/lang/String;

.field public final username:Ljava/lang/String;

.field public final videoReceived:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lbcp;->username:Ljava/lang/String;

    .line 10
    iput-boolean p2, p0, Lbcp;->videoReceived:Z

    .line 11
    iput-object p3, p0, Lbcp;->reason:Ljava/lang/String;

    .line 12
    return-void
.end method
