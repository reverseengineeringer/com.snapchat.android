.class public final enum Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;

.field public static final enum FAILED_ALREADY_SAVING:Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;

.field public static final enum FAILED_DURING_TRANSCODER_SETUP:Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;

.field public static final enum FAILED_DURING_TRANSCODING:Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;

.field public static final enum FAILED_INITIALIZING_MEDIA_SOURCES:Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;

.field public static final enum FAILED_INTERRUPTED:Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;

.field public static final enum FAILED_SNAPS_DID_NOT_LOAD_IN_TIME:Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;

.field public static final enum FAILED_SNAPS_NOT_ALL_LOADED:Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;

.field public static final enum FAILED_SSTG_DISABLED:Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;

.field public static final enum INIT:Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;

.field public static final enum STARTED:Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;

.field public static final enum SUCCESS:Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 107
    new-instance v0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;

    const-string v1, "INIT"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;->INIT:Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;

    .line 108
    new-instance v0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;

    const-string v1, "STARTED"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;->STARTED:Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;

    .line 109
    new-instance v0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v5}, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;->SUCCESS:Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;

    .line 110
    new-instance v0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;

    const-string v1, "FAILED_SSTG_DISABLED"

    invoke-direct {v0, v1, v6}, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;->FAILED_SSTG_DISABLED:Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;

    .line 111
    new-instance v0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;

    const-string v1, "FAILED_ALREADY_SAVING"

    invoke-direct {v0, v1, v7}, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;->FAILED_ALREADY_SAVING:Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;

    .line 112
    new-instance v0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;

    const-string v1, "FAILED_SNAPS_NOT_ALL_LOADED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;->FAILED_SNAPS_NOT_ALL_LOADED:Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;

    .line 113
    new-instance v0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;

    const-string v1, "FAILED_INITIALIZING_MEDIA_SOURCES"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;->FAILED_INITIALIZING_MEDIA_SOURCES:Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;

    .line 114
    new-instance v0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;

    const-string v1, "FAILED_INTERRUPTED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;->FAILED_INTERRUPTED:Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;

    .line 115
    new-instance v0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;

    const-string v1, "FAILED_DURING_TRANSCODER_SETUP"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;->FAILED_DURING_TRANSCODER_SETUP:Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;

    .line 116
    new-instance v0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;

    const-string v1, "FAILED_DURING_TRANSCODING"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;->FAILED_DURING_TRANSCODING:Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;

    .line 117
    new-instance v0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;

    const-string v1, "FAILED_SNAPS_DID_NOT_LOAD_IN_TIME"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;->FAILED_SNAPS_DID_NOT_LOAD_IN_TIME:Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;

    .line 106
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;

    sget-object v1, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;->INIT:Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;->STARTED:Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;->SUCCESS:Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;->FAILED_SSTG_DISABLED:Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;

    aput-object v1, v0, v6

    sget-object v1, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;->FAILED_ALREADY_SAVING:Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;->FAILED_SNAPS_NOT_ALL_LOADED:Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;->FAILED_INITIALIZING_MEDIA_SOURCES:Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;->FAILED_INTERRUPTED:Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;->FAILED_DURING_TRANSCODER_SETUP:Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;->FAILED_DURING_TRANSCODING:Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;->FAILED_SNAPS_DID_NOT_LOAD_IN_TIME:Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;->$VALUES:[Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;
    .locals 1

    .prologue
    .line 106
    const-class v0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;->$VALUES:[Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;

    invoke-virtual {v0}, [Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;

    return-object v0
.end method
