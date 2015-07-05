.class public final Lbbm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mErrorMessage:Ljava/lang/String;

.field public mOnSuccessTask:Lot;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lbbm;->mErrorMessage:Ljava/lang/String;

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lbbm;->mOnSuccessTask:Lot;

    .line 17
    return-void
.end method
