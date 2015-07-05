.class public final Lcom/addlive/ErrorCodes$Communication;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/addlive/ErrorCodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Communication"
.end annotation


# static fields
.field public static final ALREADY_JOINED:I = 0x7d9

.field public static final BAD_AUTH:I = 0x7d3

.field public static final CLIENT_VERSION_NOT_SUPPORTED:I = 0x7db

.field public static final INTERNAL:I = 0x7d7

.field public static final INVALID_HOST:I = 0x7d1

.field public static final INVALID_PORT:I = 0x7d2

.field public static final MEDIA_LINK_FAILURE:I = 0x7d5

.field public static final NEW_USER_CONNECTED_SAME_ID:I = 0x7df

.field public static final REMOTE_END_DIED:I = 0x7d6


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
