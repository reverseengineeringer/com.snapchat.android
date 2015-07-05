.class public final enum Lcom/snapchat/android/model/server/GeofilterResponse$SponsoredSlugPosition;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/model/server/GeofilterResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SponsoredSlugPosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/model/server/GeofilterResponse$SponsoredSlugPosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/model/server/GeofilterResponse$SponsoredSlugPosition;

.field public static final enum BOTTOM_CENTER:Lcom/snapchat/android/model/server/GeofilterResponse$SponsoredSlugPosition;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bottom_center"
    .end annotation
.end field

.field public static final enum BOTTOM_LEFT:Lcom/snapchat/android/model/server/GeofilterResponse$SponsoredSlugPosition;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bottom_left"
    .end annotation
.end field

.field public static final enum BOTTOM_RIGHT:Lcom/snapchat/android/model/server/GeofilterResponse$SponsoredSlugPosition;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bottom_right"
    .end annotation
.end field

.field public static final enum MIDDLE_CENTER:Lcom/snapchat/android/model/server/GeofilterResponse$SponsoredSlugPosition;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "middle_center"
    .end annotation
.end field

.field public static final enum MIDDLE_LEFT:Lcom/snapchat/android/model/server/GeofilterResponse$SponsoredSlugPosition;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "middle_left"
    .end annotation
.end field

.field public static final enum MIDDLE_RIGHT:Lcom/snapchat/android/model/server/GeofilterResponse$SponsoredSlugPosition;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "middle_right"
    .end annotation
.end field

.field public static final enum TOP_CENTER:Lcom/snapchat/android/model/server/GeofilterResponse$SponsoredSlugPosition;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "top_center"
    .end annotation
.end field

.field public static final enum TOP_LEFT:Lcom/snapchat/android/model/server/GeofilterResponse$SponsoredSlugPosition;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "top_left"
    .end annotation
.end field

.field public static final enum TOP_RIGHT:Lcom/snapchat/android/model/server/GeofilterResponse$SponsoredSlugPosition;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "top_right"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 65
    new-instance v0, Lcom/snapchat/android/model/server/GeofilterResponse$SponsoredSlugPosition;

    const-string v1, "TOP_LEFT"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/model/server/GeofilterResponse$SponsoredSlugPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/server/GeofilterResponse$SponsoredSlugPosition;->TOP_LEFT:Lcom/snapchat/android/model/server/GeofilterResponse$SponsoredSlugPosition;

    .line 68
    new-instance v0, Lcom/snapchat/android/model/server/GeofilterResponse$SponsoredSlugPosition;

    const-string v1, "TOP_CENTER"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/model/server/GeofilterResponse$SponsoredSlugPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/server/GeofilterResponse$SponsoredSlugPosition;->TOP_CENTER:Lcom/snapchat/android/model/server/GeofilterResponse$SponsoredSlugPosition;

    .line 71
    new-instance v0, Lcom/snapchat/android/model/server/GeofilterResponse$SponsoredSlugPosition;

    const-string v1, "TOP_RIGHT"

    invoke-direct {v0, v1, v5}, Lcom/snapchat/android/model/server/GeofilterResponse$SponsoredSlugPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/server/GeofilterResponse$SponsoredSlugPosition;->TOP_RIGHT:Lcom/snapchat/android/model/server/GeofilterResponse$SponsoredSlugPosition;

    .line 74
    new-instance v0, Lcom/snapchat/android/model/server/GeofilterResponse$SponsoredSlugPosition;

    const-string v1, "MIDDLE_LEFT"

    invoke-direct {v0, v1, v6}, Lcom/snapchat/android/model/server/GeofilterResponse$SponsoredSlugPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/server/GeofilterResponse$SponsoredSlugPosition;->MIDDLE_LEFT:Lcom/snapchat/android/model/server/GeofilterResponse$SponsoredSlugPosition;

    .line 77
    new-instance v0, Lcom/snapchat/android/model/server/GeofilterResponse$SponsoredSlugPosition;

    const-string v1, "MIDDLE_CENTER"

    invoke-direct {v0, v1, v7}, Lcom/snapchat/android/model/server/GeofilterResponse$SponsoredSlugPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/server/GeofilterResponse$SponsoredSlugPosition;->MIDDLE_CENTER:Lcom/snapchat/android/model/server/GeofilterResponse$SponsoredSlugPosition;

    .line 80
    new-instance v0, Lcom/snapchat/android/model/server/GeofilterResponse$SponsoredSlugPosition;

    const-string v1, "MIDDLE_RIGHT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/model/server/GeofilterResponse$SponsoredSlugPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/server/GeofilterResponse$SponsoredSlugPosition;->MIDDLE_RIGHT:Lcom/snapchat/android/model/server/GeofilterResponse$SponsoredSlugPosition;

    .line 83
    new-instance v0, Lcom/snapchat/android/model/server/GeofilterResponse$SponsoredSlugPosition;

    const-string v1, "BOTTOM_LEFT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/model/server/GeofilterResponse$SponsoredSlugPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/server/GeofilterResponse$SponsoredSlugPosition;->BOTTOM_LEFT:Lcom/snapchat/android/model/server/GeofilterResponse$SponsoredSlugPosition;

    .line 86
    new-instance v0, Lcom/snapchat/android/model/server/GeofilterResponse$SponsoredSlugPosition;

    const-string v1, "BOTTOM_CENTER"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/model/server/GeofilterResponse$SponsoredSlugPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/server/GeofilterResponse$SponsoredSlugPosition;->BOTTOM_CENTER:Lcom/snapchat/android/model/server/GeofilterResponse$SponsoredSlugPosition;

    .line 89
    new-instance v0, Lcom/snapchat/android/model/server/GeofilterResponse$SponsoredSlugPosition;

    const-string v1, "BOTTOM_RIGHT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/model/server/GeofilterResponse$SponsoredSlugPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/server/GeofilterResponse$SponsoredSlugPosition;->BOTTOM_RIGHT:Lcom/snapchat/android/model/server/GeofilterResponse$SponsoredSlugPosition;

    .line 63
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/snapchat/android/model/server/GeofilterResponse$SponsoredSlugPosition;

    sget-object v1, Lcom/snapchat/android/model/server/GeofilterResponse$SponsoredSlugPosition;->TOP_LEFT:Lcom/snapchat/android/model/server/GeofilterResponse$SponsoredSlugPosition;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/model/server/GeofilterResponse$SponsoredSlugPosition;->TOP_CENTER:Lcom/snapchat/android/model/server/GeofilterResponse$SponsoredSlugPosition;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/model/server/GeofilterResponse$SponsoredSlugPosition;->TOP_RIGHT:Lcom/snapchat/android/model/server/GeofilterResponse$SponsoredSlugPosition;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/android/model/server/GeofilterResponse$SponsoredSlugPosition;->MIDDLE_LEFT:Lcom/snapchat/android/model/server/GeofilterResponse$SponsoredSlugPosition;

    aput-object v1, v0, v6

    sget-object v1, Lcom/snapchat/android/model/server/GeofilterResponse$SponsoredSlugPosition;->MIDDLE_CENTER:Lcom/snapchat/android/model/server/GeofilterResponse$SponsoredSlugPosition;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/snapchat/android/model/server/GeofilterResponse$SponsoredSlugPosition;->MIDDLE_RIGHT:Lcom/snapchat/android/model/server/GeofilterResponse$SponsoredSlugPosition;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/snapchat/android/model/server/GeofilterResponse$SponsoredSlugPosition;->BOTTOM_LEFT:Lcom/snapchat/android/model/server/GeofilterResponse$SponsoredSlugPosition;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/snapchat/android/model/server/GeofilterResponse$SponsoredSlugPosition;->BOTTOM_CENTER:Lcom/snapchat/android/model/server/GeofilterResponse$SponsoredSlugPosition;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/snapchat/android/model/server/GeofilterResponse$SponsoredSlugPosition;->BOTTOM_RIGHT:Lcom/snapchat/android/model/server/GeofilterResponse$SponsoredSlugPosition;

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/model/server/GeofilterResponse$SponsoredSlugPosition;->$VALUES:[Lcom/snapchat/android/model/server/GeofilterResponse$SponsoredSlugPosition;

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
    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/model/server/GeofilterResponse$SponsoredSlugPosition;
    .locals 1

    .prologue
    .line 63
    const-class v0, Lcom/snapchat/android/model/server/GeofilterResponse$SponsoredSlugPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/server/GeofilterResponse$SponsoredSlugPosition;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/model/server/GeofilterResponse$SponsoredSlugPosition;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/snapchat/android/model/server/GeofilterResponse$SponsoredSlugPosition;->$VALUES:[Lcom/snapchat/android/model/server/GeofilterResponse$SponsoredSlugPosition;

    invoke-virtual {v0}, [Lcom/snapchat/android/model/server/GeofilterResponse$SponsoredSlugPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/model/server/GeofilterResponse$SponsoredSlugPosition;

    return-object v0
.end method
