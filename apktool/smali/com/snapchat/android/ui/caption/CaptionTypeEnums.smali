.class public final enum Lcom/snapchat/android/ui/caption/CaptionTypeEnums;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/ui/caption/CaptionTypeEnums;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/ui/caption/CaptionTypeEnums;

.field public static final enum FAT_CAPTION_TYPE:Lcom/snapchat/android/ui/caption/CaptionTypeEnums;

.field public static final enum FAT_CENTER_CAPTION_TYPE:Lcom/snapchat/android/ui/caption/CaptionTypeEnums;

.field public static final enum NON_FAT_VANILLA_CAPTION_TYPE:Lcom/snapchat/android/ui/caption/CaptionTypeEnums;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/snapchat/android/ui/caption/CaptionTypeEnums;

    const-string v1, "NON_FAT_VANILLA_CAPTION_TYPE"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/ui/caption/CaptionTypeEnums;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/ui/caption/CaptionTypeEnums;->NON_FAT_VANILLA_CAPTION_TYPE:Lcom/snapchat/android/ui/caption/CaptionTypeEnums;

    .line 9
    new-instance v0, Lcom/snapchat/android/ui/caption/CaptionTypeEnums;

    const-string v1, "FAT_CAPTION_TYPE"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/ui/caption/CaptionTypeEnums;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/ui/caption/CaptionTypeEnums;->FAT_CAPTION_TYPE:Lcom/snapchat/android/ui/caption/CaptionTypeEnums;

    .line 10
    new-instance v0, Lcom/snapchat/android/ui/caption/CaptionTypeEnums;

    const-string v1, "FAT_CENTER_CAPTION_TYPE"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/ui/caption/CaptionTypeEnums;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/ui/caption/CaptionTypeEnums;->FAT_CENTER_CAPTION_TYPE:Lcom/snapchat/android/ui/caption/CaptionTypeEnums;

    .line 6
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/snapchat/android/ui/caption/CaptionTypeEnums;

    sget-object v1, Lcom/snapchat/android/ui/caption/CaptionTypeEnums;->NON_FAT_VANILLA_CAPTION_TYPE:Lcom/snapchat/android/ui/caption/CaptionTypeEnums;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/ui/caption/CaptionTypeEnums;->FAT_CAPTION_TYPE:Lcom/snapchat/android/ui/caption/CaptionTypeEnums;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/ui/caption/CaptionTypeEnums;->FAT_CENTER_CAPTION_TYPE:Lcom/snapchat/android/ui/caption/CaptionTypeEnums;

    aput-object v1, v0, v4

    sput-object v0, Lcom/snapchat/android/ui/caption/CaptionTypeEnums;->$VALUES:[Lcom/snapchat/android/ui/caption/CaptionTypeEnums;

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
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/ui/caption/CaptionTypeEnums;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/snapchat/android/ui/caption/CaptionTypeEnums;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/caption/CaptionTypeEnums;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/ui/caption/CaptionTypeEnums;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/snapchat/android/ui/caption/CaptionTypeEnums;->$VALUES:[Lcom/snapchat/android/ui/caption/CaptionTypeEnums;

    invoke-virtual {v0}, [Lcom/snapchat/android/ui/caption/CaptionTypeEnums;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/ui/caption/CaptionTypeEnums;

    return-object v0
.end method
