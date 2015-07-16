.class public final Laxb$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laxb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lawv;Laxd;[Laww;)Laxb;
    .locals 1

    .prologue
    .line 55
    new-instance v0, Laxb;

    invoke-direct {v0, p0, p1, p2}, Laxb;-><init>(Lawv;Laxd;[Laww;)V

    return-object v0
.end method
