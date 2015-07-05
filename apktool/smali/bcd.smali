.class public final Lbcd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public sourceId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lbcd;->sourceId:Ljava/lang/String;

    .line 11
    return-void
.end method
