.class public final Lcom/snapchat/android/api2/LoginTask$b;
.super Lbjf;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/api2/LoginTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation runtime Lud;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 201
    invoke-direct {p0}, Lbjf;-><init>()V

    .line 202
    invoke-static {p0}, Lui;->buildStaticAuthPayload(Lbhy;)Lbhy;

    .line 203
    return-void
.end method
