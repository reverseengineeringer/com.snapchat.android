.class public final Lbfz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final mRgen:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-direct {p0, v0}, Lbfz;-><init>(Ljava/security/SecureRandom;)V

    .line 16
    return-void
.end method

.method private constructor <init>(Ljava/security/SecureRandom;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lbfz;->mRgen:Ljava/security/SecureRandom;

    .line 20
    return-void
.end method
