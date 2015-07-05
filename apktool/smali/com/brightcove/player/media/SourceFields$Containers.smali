.class public final Lcom/brightcove/player/media/SourceFields$Containers;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brightcove/player/media/SourceFields;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Containers"
.end annotation


# static fields
.field public static final FLV:Ljava/lang/String; = "FLV"

.field public static final M2TS:Ljava/lang/String; = "M2TS"

.field public static final MP4:Ljava/lang/String; = "MP4"

.field public static final WVM:Ljava/lang/String; = "WVM"


# instance fields
.field final synthetic this$0:Lcom/brightcove/player/media/SourceFields;


# direct methods
.method public constructor <init>(Lcom/brightcove/player/media/SourceFields;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/brightcove/player/media/SourceFields$Containers;->this$0:Lcom/brightcove/player/media/SourceFields;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
